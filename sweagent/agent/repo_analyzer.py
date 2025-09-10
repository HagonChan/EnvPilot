import sys
import requests
import re
import os
import json
from dataclasses import dataclass
from sweagent.utils.log import get_logger
from pathlib import Path
import backoff
from requests.exceptions import RequestException
from tqdm import tqdm

# 定义类级别的装饰器
on_exception_decorator = backoff.on_exception(
    backoff.expo,
    RequestException,
    max_tries=3,
    max_time=30,
    jitter=None,
)


@dataclass
class RepoAnalyzerConfig:
    """配置类，用于管理分析器的各种设置"""

    api_timeout: int = 30
    max_retries: int = 3
    cache_duration: int = 3600  # 1小时缓存
    max_file_size: int = 12000  # 文件内容最大字符数
    batch_size: int = 10  # 批处理大小


class GitHubRepositoryAnalyzer:
    """
    A class to analyze a GitHub repository, including fetching its primary language and CI/CD workflow files.
    """

    def __init__(
        self,
        github_url: str = None,
        org: str = None,
        repo: str = None,
        number: int = None,
        commit: str = None,
        model: str = None,
        config: RepoAnalyzerConfig = None,
    ):
        """
        Initializes the GitHubRepositoryAnalyzer object with a GitHub repository URL.

        Args:
            github_url (str): The URL of the GitHub repository.
            config (AnalyzerConfig): Configuration object for the analyzer.
        """
        self.config = config or RepoAnalyzerConfig()
        self.github_url = github_url
        self.org = org
        self.repo = repo
        self.number = number
        self.commit_id = commit
        if self.github_url != None:
            self.owner, self.repo = self._extract_owner_and_repo(github_url)
        else:
            self.owner = self.org
            self.repo = self.repo

        self.github_token = "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"
        self.header = {
            "Authorization": f"token {self.github_token}",
            "Accept": "application/vnd.github.v3+json",
        }
        self.model = model
        self.container_guidelines_path = "sweagent/agent/prompts/container_guidelines"
        self.language_guidelines_path = "sweagent/agent/prompts/language_guidelines"
        self.logger = get_logger("Repo Analyzer", emoji="🧐")
        self.output_dir = Path(f"repo_analysis_output/{self.owner}__{self.repo}-{self.number}")
        os.makedirs(self.output_dir, exist_ok=True)
        ## save the metadata
        self.cicd_filed = ["test", "build", "ci", "main", "unit"]
        self.primary_language = ""
        self.language_guidelines = ""
        self.found_workflow_files = []
        self.cicd = {}
        self.readme = ""
        self.workflow_guidelines = ""
        self.web_search_guidelines = ""
        self.latest_containter_guidelines = ""

    def _extract_owner_and_repo(self, github_url):
        """
        Extracts the owner and repository name from a GitHub URL.

        Args:
            github_url (str): The URL of the GitHub repository.

        Returns:
            tuple: A tuple containing the owner and repository name.
        """
        match = re.search(r"github\.com/([^/]+)/([^/]+)", github_url)
        if not match:
            self.logger.error(
                "Invalid GitHub URL. Please ensure the URL is in the format 'https://github.com/owner/repo'."
            )
            return None, None
        owner, repo = match.groups()
        repo = repo.replace(".git", "")  # Remove .git suffix if present
        return owner, repo

    @on_exception_decorator
    def _fetch_primary_language(self):
        """内部方法：从 GitHub API 获取主要语言"""
        if not self.owner or not self.repo:
            self.logger.error("Invalid repository information. Please check the GitHub URL.")
            return

        api_url = f"https://api.github.com/repos/{self.owner}/{self.repo}/languages"
        response = requests.get(api_url, timeout=self.config.api_timeout, headers=self.header)
        if response.status_code == 200:
            languages = response.json()
            self.logger.debug(f"Languages: {languages}")
            if languages:
                self.primary_language = max(languages, key=languages.get) or ""
        else:
            self.logger.error(f"Failed to fetch primary language: {response.status_code} {response.reason}.")

    @on_exception_decorator
    def _fetch_workflow_files(self) -> list:
        """内部方法：获取工作流文件"""
        workflow_files_path = self.output_dir / "workflow_files"
        if os.path.exists(workflow_files_path) and len(os.listdir(workflow_files_path)) > 0:
            files = os.listdir(workflow_files_path)
            for file in files:
                with open(os.path.join(workflow_files_path, file), "r") as f:
                    self.cicd[file] = f.read()
            return

        if not self.owner or not self.repo:
            self.logger.error("Invalid repository information. Please check the GitHub URL.")
            return []

        api_url = f"https://api.github.com/repos/{self.owner}/{self.repo}/contents/.github/workflows"
        if self.commit_id != None:
            api_url += f"?ref={self.commit_id}"

        response = requests.get(api_url, timeout=self.config.api_timeout, headers=self.header)
        if response.status_code == 200:
            files = response.json()
            if not files:
                self.logger.warning(f"No workflow files detected in the repository: {self.owner}/{self.repo}")
                return

            os.makedirs(workflow_files_path, exist_ok=True)
            for file in files:
                if file["type"] == "file" and any(sub in file["name"].lower() for sub in self.cicd_filed):
                    file_url = file["download_url"]
                    file_response = requests.get(file_url, timeout=self.config.api_timeout)
                    if file_response.status_code == 200:
                        file_path = os.path.join(workflow_files_path, file["name"])
                        self.cicd[file["name"]] = file_response.text
                        with open(file_path, "w") as f:
                            f.write(file_response.text)
                        self.logger.info(f"Saved workflow file: {file_path}")
                    else:
                        self.logger.error(
                            f"Failed to fetch content of {file['name']}: {file_response.status_code} {file_response.reason}"
                        )
        elif response.status_code == 404:
            self.logger.error(f"No .github/workflows directory found in the repository: {self.owner}/{self.repo}")
        else:
            self.logger.error(f"Failed to fetch workflow files: {response.status_code} {response.reason}.")

    @on_exception_decorator
    def _fetch_readme(self):
        """内部方法：获取仓库 README.md 文件"""
        readme_path = os.path.join(self.output_dir, "README.md")
        if os.path.exists(readme_path):
            with open(readme_path, "r") as f:
                self.readme = f.read()
            return

        if not self.owner or not self.repo:
            self.logger.error("Invalid repository information. Please check the GitHub URL.")
            return

        api_url = f"https://api.github.com/repos/{self.owner}/{self.repo}/readme"
        if self.commit_id is not None:
            api_url += f"?ref={self.commit_id}"

        response = requests.get(api_url, timeout=self.config.api_timeout, headers=self.header)

        if response.status_code == 200:
            readme_info = response.json()
            download_url = readme_info.get("download_url")
            if not download_url:
                self.logger.warning(f"No download URL found for README in the repository: {self.owner}/{self.repo}")
                return

            file_response = requests.get(download_url, timeout=self.config.api_timeout)
            if file_response.status_code == 200:
                readme_path = os.path.join(self.output_dir, "README.md")
                os.makedirs(self.output_dir, exist_ok=True)
                self.readme = file_response.text
                with open(readme_path, "w", encoding="utf-8") as f:
                    f.write(file_response.text)
                self.logger.info(f"Saved README.md file: {readme_path}")
                return
            else:
                self.logger.error(
                    f"Failed to download README.md content: {file_response.status_code} {file_response.reason}"
                )
        elif response.status_code == 404:
            self.logger.info(f"No README.md file found in the repository: {self.owner}/{self.repo}")
        else:
            self.logger.error(f"Failed to fetch README.md: {response.status_code} {response.reason}.")

    @on_exception_decorator
    def _fetch_dockerfile(self, output_dir):
        """内部方法：获取 Dockerfile"""
        if not self.owner or not self.repo:
            self.logger.error("Invalid repository information. Please check the GitHub URL.")
            return False

        api_url = f"https://api.github.com/repos/{self.owner}/{self.repo}/contents/Dockerfile"
        if self.commit_id != None:
            api_url += f"?ref={self.commit_id}"

        response = requests.get(api_url, timeout=self.config.api_timeout, headers=self.header)
        if response.status_code == 200:
            dockerfile_info = response.json()
            if dockerfile_info["type"] == "file":
                # Create the output directory if it doesn't exist
                os.makedirs(output_dir, exist_ok=True)
                file_url = dockerfile_info["download_url"]
                file_response = requests.get(file_url, timeout=self.config.api_timeout)
                if file_response.status_code == 200:
                    file_path = os.path.join(output_dir, "Dockerfile")
                    with open(file_path, "w") as f:
                        f.write(file_response.text)
                    self.logger.info(f"Saved Dockerfile: {file_path}")
                    return True
                else:
                    self.logger.error(
                        f"Failed to fetch content of Dockerfile: {file_response.status_code} {file_response.reason}"
                    )
            else:
                self.logger.info(f"No Dockerfile detected in the repository: {self.owner}/{self.repo}")
        elif response.status_code == 404:
            self.logger.info(f"No Dockerfile detected in the repository: {self.owner}/{self.repo}")
        else:
            self.logger.error(f"Failed to fetch Dockerfile: {response.status_code} {response.reason}.")
            self.logger.error("Please check the repository URL and ensure it is publicly accessible.")

        return False

    def get_dockerfile_content(self, output_dir):
        """
        Fetches and saves the content of Dockerfile in the repository to a local file.

        Args:
            output_dir (str): The directory to save the Dockerfile. Defaults to "dockerfiles".
        """
        try:
            self._fetch_dockerfile(output_dir)
        except requests.RequestException as e:
            self.logger.error(f"Error during request: {e}")
            self.logger.error(
                "There might be a problem with the network or the provided URL. Please check the URL and try again."
            )

    def workflow_to_script(self, workflow_path):
        """
        Converts a workflow file content to a bash script.
        """
        if not self.model:
            self.logger.warning("No model available for workflow conversion")
            return "No model available for conversion"

        system_prompt = f"""This is the content of a workflow file used to run a test workflow for a repository. I want you to turn the file into a '.sh' script that I can use on my machine to prepare and run tests of that specific repository (the file might contain multiple configurations, I want a simple configuration for Linux Ubuntu). The workflow might be irrelevant or contain no steps for building and testing. In such case, just mention that the script is not about setting up the project for running tests."""

        try:
            with open(workflow_path) as workflow_file:
                query = workflow_file.read()

            messages = [
                {"role": "system", "content": system_prompt},
                {"role": "user", "content": query[: self.config.max_file_size]},  # 使用配置的限制
            ]
            workflow_summary = self.model.query(messages)["message"]
            return workflow_summary
        except Exception as e:
            self.logger.error(f"Failed to convert workflow to script: {e}")
            return f"Error converting workflow: {e}"

    def get_language_guidelines(self):
        """
        Reads language-specific guidelines from a file.
        """
        if not self.primary_language:
            self.logger.warning("No primary language detected, skipping guidelines")
            return

        try:
            guidelines_path = os.path.join(self.language_guidelines_path, f"{self.primary_language.lower()}_guidelines")
            self.logger.debug(f"guidelines_path: {guidelines_path}")
            with open(guidelines_path) as guidelines_file:
                guidelines = guidelines_file.read()
            self.language_guidelines = f"""Programming Language guidelines for {self.primary_language}:\n{guidelines}"""
            self.logger.info(f"Loaded guidelines for {self.primary_language}")
        except FileNotFoundError:
            self.logger.warning(f"No guidelines found for language: {self.primary_language}")
        except Exception as e:
            self.logger.error(f"Error loading language guidelines: {e}")

    def get_workflow_guidelines(self):
        """
        Generates workflow guidelines based on the found workflow files.
        """
        if not self.cicd or len(self.cicd) == 0:
            self.logger.warning(f"No workflow files found in the repository: {self.owner}/{self.repo}")
            return

        self.workflow_guidelines = f"""\nThe following workflow files might contain information on how to set up the project and run test cases.  This might be useful later on when building/installing and testing the project:\n"""
        for file, content in self.cicd.items():
            self.workflow_guidelines += f"""\nfile: {file}\nContent:\n{content}"""

    def get_latest_container_helper(self):
        """获取最新容器技术指导"""
        try:
            container_file = os.path.join(self.container_guidelines_path, "latest_containter_technology")
            with open(container_file) as guidelines_file:
                guidelines = guidelines_file.read()
            self.latest_containter_guidelines = f"""# latest_containter_technology:\n{guidelines}"""
        except FileNotFoundError:
            self.logger.warning(f"No guidelines found for latest_containter_technology")
        except Exception as e:
            self.logger.error(f"Error loading container guidelines: {e}")

    def get_web_search_guidelines(self):
        """
        Generates web search guidelines based on search results.
        """
        try:
            # 注意：这里需要确保 search_install_doc 函数可用
            # self.web_search_guidelines = f"""\nWe searched on Google for installing/building {self.repo} from source code on Ubuntu/Debian. Here is the summary of the top 5 results:\n{search_install_doc(self.repo)}\n"""
            self.web_search_guidelines = (
                f"""\nSearching for installation instructions for {self.repo} repository...\n"""
            )
            self.logger.info("Generated web search guidelines")
        except Exception as e:
            self.logger.error(f"Error generating web search guidelines: {e}")

    def create_metadata_file(self):
        """
        Creates a metadata file summarizing the repository analysis.
        """
        instance_id = f"{self.owner}__{self.repo}-{self.number}"
        if os.path.exists(self.output_dir / f"{instance_id}_metadata.json"):
            with open(self.output_dir / f"{instance_id}_metadata.json", "r") as f:
                metadata = json.load(f)
                if metadata["primary_language"] == "":
                    self._fetch_primary_language()
                    self.get_language_guidelines()
                    metadata["primary_language"] = self.primary_language
                    metadata["language_guidelines"] = self.language_guidelines
                if metadata["readme"] == "":
                    self._fetch_readme()
                    metadata["readme"] = self.readme
                if metadata["workflow_guidelines"] == "":
                    self._fetch_workflow_files()
                    self.get_workflow_guidelines()
                    metadata["workflow_guidelines"] = self.workflow_guidelines
                metadata["org"] = self.owner
                metadata["repo"] = self.repo
                metadata["number"] = self.number
                metadata["commit"] = self.commit_id
            with open(self.output_dir / f"{instance_id}_metadata.json", "w") as f:
                json.dump(metadata, f, indent=4)
            return metadata

        try:
            self._fetch_primary_language()
            self.get_language_guidelines()
            self._fetch_workflow_files()
            self.get_workflow_guidelines()
            self._fetch_readme()
            metadata = {
                "primary_language": self.primary_language,
                "language_guidelines": self.language_guidelines,
                "workflow_guidelines": self.workflow_guidelines,
                "readme": self.readme,
            }
            metadata_file = self.output_dir / f"{instance_id}_metadata.json"
            with open(metadata_file, "w") as metadata_file_handle:
                json.dump(metadata, metadata_file_handle, indent=4)
        except Exception as e:
            self.logger.error(f"Error creating metadata file: {e}")
            return {
                "primary_language": self.primary_language,
                "language_guidelines": self.language_guidelines,
                "workflow_guidelines": self.workflow_guidelines,
                "readme": self.readme,
            }

        return metadata


# Example usage
if __name__ == "__main__":
    repo_analyzer_config = RepoAnalyzerConfig()
    with open("data/stage3_2_new_simplified.jsonl", "r") as f:
        for line in f:
            line = json.loads(line)
            org = line["org"]
            repo = line["repo"]
            pr = line["number"]
            commit = line["commit"]
            analyzer = GitHubRepositoryAnalyzer(
                org=org, repo=repo, number=pr, commit=commit, config=repo_analyzer_config
            )
            metadata = analyzer.create_metadata_file()
