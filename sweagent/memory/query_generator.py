import os
import json
import time
from concurrent.futures import ThreadPoolExecutor, as_completed
from openai import OpenAI
from pydantic import BaseModel, Field, ValidationError
from typing import Dict, List, Optional
from tqdm import tqdm
from sweagent.run.hooks.LLM_judge3_2 import Config as LLMConfig
from sweagent.agent.repo_analyzer import GitHubRepositoryAnalyzer
from sweagent.utils.log import get_logger
from typing import Tuple


class LanguageProfile(BaseModel):
    name: Optional[str] = None
    version_constraint: Optional[str] = None


class PackageManagerProfile(BaseModel):
    name: Optional[str] = None
    install_command: Optional[str] = None
    config_file: Optional[str] = None


class SystemDependencies(BaseModel):
    identified_in_ci: List[str] = Field(default_factory=list)
    likely_required: List[str] = Field(default_factory=list)


class ProjectProfile(BaseModel):
    language: LanguageProfile = Field(default_factory=LanguageProfile)
    package_manager: PackageManagerProfile = Field(default_factory=PackageManagerProfile)
    build_tools: List[str] = Field(default_factory=list)
    test_framework: List[str] = Field(default_factory=list)
    system_dependencies: SystemDependencies = Field(default_factory=SystemDependencies)


class QueriesResponse(BaseModel):
    queries: List[str]


class QueryGenerator:
    """
    Intelligently generates high-quality retrieval queries from project guidelines.
    Implements the "Extract-Structure-Formulate" paradigm.
    """

    PROFILE_EXTRACTION_PROMPT_TEMPLATE = """
As an expert software engineer, your task is to analyze project files to extract the technical components required to set up its environment.
**IMPORTANT CONTEXT: You are operating inside a fresh, clean Linux container (e.g., Ubuntu22.04). Your goal is to determine the necessary commands and tools to install *directly within this existing container*.**

**CRITICAL CONSTRAINTS:**
- **DO NOT include Docker-related setup steps.** You are already inside a container, so ignore Dockerfile, docker build, docker run, or any containerization instructions.
- **Focus on what needs to be installed INSIDE the container**, not how to build or run containers.
- If you see a Dockerfile, extract the `RUN apt-get install ...` commands as system dependencies, but ignore `FROM`, `docker build`, or `docker run` instructions.

--- README.md ---
{readme}
--- END README.md ---

--- Workflow Guidelines (e.g., .github/workflows/ci.yml, Dockerfile) ---
{workflow_guide}
--- END WORKFLOW GUIDELINES ---

Based on the files, extract the key information into the following JSON schema.

**CONSTRAINTS:**
- **DO NOT include Docker-related setup steps.** Your analysis should focus on what needs to be done *inside* a container, not on how to build one. For example, if you see a Dockerfile, extract the `RUN apt-get install ...` commands as system dependencies, but ignore `FROM`, `docker build`, or `docker run` instructions.
- If a tool or dependency is mentioned, extract it. If not, use `null` or an empty list `[]`.

Fill the following JSON schema:
{{
    "language": {{
        "name": "string (e.g., Python, Node.js, C/C++)",
        "version_constraint": "string (e.g., 3.10, >=16.x)"
    }},
    "package_manager": {{
        "name": "string (e.g., pip, npm)",
        "install_command": "string (e.g., pip install -r requirements.txt)",
        "config_file": "string (e.g., pyproject.toml, package.json)"
    }},
    "build_tools": ["string (e.g., make, cmake, gradle)"],
    "test_framework": ["string (e.g., pytest, jest)"],
    "system_dependencies": {{
        "identified_in_ci": ["string (system packages from CI/workflow files, e.g., gcc, make)"],
        "likely_required": ["string (inferred but not explicitly listed system dependencies, e.g., libssl-dev)"]
    }},
}}

Return only the JSON object with the extracted information.
"""

    QUERY_GENERATION_PROMPT_TEMPLATE = """
    As an experienced developer setting up a project, generate 3-5 hypothetical, specific questions you might ask when facing setup problems. Base your questions on the provided technical analysis. These questions should be perfect for retrieving solutions from a knowledge base.

    **IMPORTANT CONTEXT: You are setting up the environment INSIDE an existing Linux container. DO NOT include Docker-related questions or containerization setup.**

    --- Project Technology Stack Analysis ---
    {profile_str}
    --- END ANALYSIS ---
    
    The questions must be:
    1.  INTENT-ALIGNED: Address specific problems (e.g., "How to fix...").
    2.  CONTEXT-RICH: Include versions, OS, libraries from the analysis.
    3.  PROACTIVE: Predict common pitfalls like version conflicts or missing dependencies.
    4.  CONTAINER-AWARE: Focus on installing tools and dependencies inside the container, not on containerization itself.

    **AVOID questions about:**
    - Docker setup, container building, or containerization
    - "How to run this in Docker" or "How to build a container"
    - Container orchestration or deployment

    **FOCUS on questions about:**
    - Installing system packages with apt-get/yum
    - Setting up language runtimes and package managers
    - Configuring build tools and dependencies
    - Resolving version conflicts within the container

    Return only a JSON object with a "queries" key containing a list of question strings.
    """

    def __init__(self, config: LLMConfig = None):
        self.config = config or LLMConfig()
        self.client = OpenAI(api_key=self.config.api_key, base_url=self.config.api_base)
        self.logger = get_logger("QueryGenerator", emoji="🔍")

    def _call_llm(self, prompt: str, max_retries: int = 3) -> Optional[Dict]:
        for attempt in range(max_retries):
            try:
                messages = [{"role": "user", "content": prompt}]
                response = self.client.chat.completions.create(
                    model=self.config.model,
                    messages=messages,
                    response_format={"type": "json_object"},
                    temperature=self.config.temperature,
                )
                content = response.choices[0].message.content
                return json.loads(content)
            except json.JSONDecodeError as e:
                self.logger.warning(f"JSON decode error on attempt {attempt + 1}: {e}")
                if attempt == max_retries - 1:
                    self.logger.error("Failed to parse JSON response after all retries")
                    return None
                time.sleep(1)
            except Exception as e:
                self.logger.warning(f"LLM call attempt {attempt + 1} failed: {e}")
                if attempt == max_retries - 1:
                    self.logger.error("LLM call failed after all retries.")
                    return None
                time.sleep(2**attempt)
        return None

    def extract_project_profile(self, metadata: Dict) -> Optional[ProjectProfile]:
        """Stage 1: Extracts and validates a structured project profile."""
        self.logger.info("Stage 1: Extracting project profile...")
        readme = metadata.get("readme", "")
        workflow_guide = metadata.get("workflow_guidelines", "")

        prompt = self.PROFILE_EXTRACTION_PROMPT_TEMPLATE.format(readme=readme, workflow_guide=workflow_guide)
        profile_json = self._call_llm(prompt)
        if not profile_json:
            return None

        try:
            profile = ProjectProfile.model_validate(profile_json)
            self.logger.info("Successfully extracted and validated project profile.")
            return profile
        except ValidationError as e:
            self.logger.error(f"Pydantic validation failed for project profile: {e}")
            # Try to create a minimal valid profile
            try:
                minimal_profile = ProjectProfile()
                self.logger.warning("Created minimal project profile due to validation failure")
                return minimal_profile
            except Exception as e2:
                self.logger.error(f"Failed to create minimal profile: {e2}")
                return None

    def generate_hypothetical_queries(self, project_profile: ProjectProfile) -> Optional[List[str]]:
        """Stage 2: Generates and validates hypothetical queries."""
        self.logger.info("Stage 2: Generating hypothetical queries...")
        profile_str = project_profile.model_dump_json(indent=2)

        prompt = self.QUERY_GENERATION_PROMPT_TEMPLATE.format(profile_str=profile_str)
        queries_json = self._call_llm(prompt)
        if not queries_json:
            return None

        try:
            response = QueriesResponse.model_validate(queries_json)
            self.logger.info(f"Successfully generated and validated {len(response.queries)} queries.")
            return response.queries
        except ValidationError as e:
            self.logger.error(f"Pydantic validation failed for queries response: {e}")
            # Try to extract queries from different response formats
            if isinstance(queries_json, dict) and "queries" in queries_json:
                queries = queries_json["queries"]
                if isinstance(queries, list) and all(isinstance(q, str) for q in queries):
                    self.logger.warning("Extracted queries from dict format despite validation error")
                    return queries
            elif isinstance(queries_json, list) and all(isinstance(q, str) for q in queries_json):
                self.logger.warning("Extracted queries from list format despite validation error")
                return queries_json
            return None

    def generate_queries_from_guidelines(self, metadata: Dict) -> Tuple[Optional[List[str]], Optional[ProjectProfile]]:
        """Executes the full query generation process."""
        profile = self.extract_project_profile(metadata)
        if not profile:
            self.logger.error("Stage 1 failed: Could not create project profile.")
            return None, None

        queries = self.generate_hypothetical_queries(profile)
        if not queries:
            self.logger.error("Stage 2 failed: Could not generate queries.")
            return None, profile

        return queries, profile


class QueryGenerationPipeline:
    def __init__(self, config: LLMConfig, input_file: str, output_file: str):
        self.config = config
        self.input_file = input_file
        self.output_file = output_file
        self.query_generator = QueryGenerator(config)
        self.logger = get_logger("Pipeline", emoji="🚀")
        self.results = []

    def _load_data(self) -> List[Dict]:
        if not os.path.exists(self.input_file):
            self.logger.error(f"Input file not found: {self.input_file}")
            return []
        try:
            with open(self.input_file, "r") as f:
                data = [json.loads(line) for line in f]
            self._load_cached_results()
            data = [
                item
                for item in data
                if f"{item['org']}__{item['repo']}-{item['number']}" not in [r["instance_id"] for r in self.results]
            ]
            self.logger.info(f"Loaded {len(data)} items from {self.input_file}")
            return data
        except Exception as e:
            self.logger.error(f"Error loading input file: {e}")
            return []

    def _load_cached_results(self):
        if not os.path.exists(self.output_file):
            return
        try:
            with open(self.output_file, "r") as f:
                cached_results = json.load(f)
                self.logger.info(f"Successfully loaded {len(cached_results)} cached results")
                self.results.extend(cached_results)
        except Exception as e:
            self.logger.error(f"Error loading cached results: {e}")

    def _save_results(self, results: List[Dict]):
        try:
            self.results.extend(results)
            with open(self.output_file, "w") as f:
                json.dump(self.results, f, indent=4, ensure_ascii=False)
            successful = sum(1 for r in self.results if r["status"] == "success")
            failed = len(self.results) - successful
            self.logger.info(f"Results saved to {self.output_file}. Success: {successful}, Failed: {failed}")
        except Exception as e:
            self.logger.error(f"Error saving results: {e}")

    def _get_metadata_for_item(self, item: Dict) -> Optional[Dict]:
        try:
            analyzer = GitHubRepositoryAnalyzer(
                org=item["org"], repo=item["repo"], number=item["number"], commit=item["commit"]
            )
            return analyzer.create_metadata_file()
        except Exception as e:
            self.logger.error(f"Error analyzing repo for {item.get('instance_id', 'unknown')}: {e}")
            return None

    def _process_item(self, item: Dict) -> Dict:
        """Worker function to process a single repository item."""
        instance_id = f"{item['org']}__{item['repo']}-{item['number']}"
        item["instance_id"] = instance_id

        try:
            metadata = self._get_metadata_for_item(item)
            if not metadata or not metadata.get("readme"):
                return {
                    "instance_id": instance_id,
                    "status": "failed",
                    "reason": "Metadata extraction failed or is empty",
                    "queries": None,
                }

            queries, profile = self.query_generator.generate_queries_from_guidelines(metadata)

            if not queries:
                return {
                    "instance_id": instance_id,
                    "status": "failed",
                    "reason": "Query generation failed",
                    "queries": None,
                    "profile": profile.model_dump() if profile else None,
                }

            return {
                "instance_id": instance_id,
                "status": "success",
                "reason": None,
                "queries": queries,
                "profile": profile.model_dump() if profile else None,
            }
        except Exception as e:
            self.logger.error(f"Unexpected error processing {instance_id}: {e}")
            return {
                "instance_id": instance_id,
                "status": "failed",
                "reason": f"Unexpected error: {str(e)}",
                "queries": None,
            }

    def run(self):
        """Executes the entire pipeline: load, process in parallel, and save."""
        data = self._load_data()
        if not data:
            return

        self.logger.info(f"Processing {len(data)} items")
        results = []
        with ThreadPoolExecutor(max_workers=self.config.max_workers) as executor:
            futures = [executor.submit(self._process_item, item) for item in data]

            for future in tqdm(as_completed(futures), total=len(data), desc="Generating Queries"):
                try:
                    results.append(future.result())
                except Exception as e:
                    self.logger.error(f"An unexpected error occurred in a worker: {e}")

        self._save_results(results)


if __name__ == "__main__":
    # Configuration
    api_key = os.getenv("DEEPSEEK_API_KEY")
    if not api_key:
        raise ValueError("DEEPSEEK_API_KEY environment variable not set.")

    config = LLMConfig(
        api_base="https://api.deepseek.com",
        api_key=api_key,
        model="deepseek-chat",
        max_workers=24,
    )

    analyzer = GitHubRepositoryAnalyzer(
        github_url=None,
        org="casey",
        repo="just",
        number=2836,
        commit="a3da3cf959a4cf9eba85777c4e5c0a95ad0e0d0b",
    )
    metadata = analyzer.create_metadata_file()
    query_generator = QueryGenerator(config)
    queries, profile = query_generator.generate_queries_from_guidelines(metadata)
