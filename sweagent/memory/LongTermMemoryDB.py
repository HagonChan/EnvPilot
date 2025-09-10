import uuid
import os
import json
from dataclasses import dataclass
from contextlib import contextmanager
from typing import List, Dict, Any
from pymilvus import (
    connections,
    Collection,
    CollectionSchema,
    FieldSchema,
    DataType,
    utility,
    AnnSearchRequest,
    WeightedRanker,
)
from pymilvus.model.dense import SentenceTransformerEmbeddingFunction
from tqdm import tqdm
from sweagent.agent.models import EmbeddingModel, get_model, EmbeddingModelConfig, LiteLLMModel
from sweagent.utils.log import get_logger
from huggingface_hub import InferenceClient
from litellm import embedding


@dataclass
class MilvusConfig:
    """Milvus数据库配置类"""

    host: str = "127.0.0.1"
    port: str = "19530"
    collection_name: str = "Stage_3_2"
    vector_dim: int = 4096
    connection_timeout: int = 30
    index_type: str = "IVF_FLAT"
    metric_type: str = "COSINE"
    nlist: int = 128
    nprobe: int = 10
    batch_size: int = 32
    similarity_threshold: float = 0.9


class LongTermMemoryDB:
    def __init__(
        self,
        config: MilvusConfig = None,
        embedding_model=None,
        drop_collection: bool = False,
    ):
        self.config = config or MilvusConfig()
        self.collection_name = self.config.collection_name
        self.vector_dim = self.config.vector_dim
        self.drop_collection = drop_collection
        self.logger = get_logger("LongTermMemoryDB", emoji="📊")
        self.embedding_model = embedding_model
        self.embed_client = InferenceClient()
        # 连接到Milvus并初始化集合
        self._connect_to_milvus()
        self._init_collection()

    def _connect_to_milvus(self):
        """连接到Milvus数据库"""
        try:
            connections.connect(host=self.config.host, port=self.config.port, timeout=self.config.connection_timeout)
            self.logger.info(f"Connected to Milvus at {self.config.host}:{self.config.port}")
        except Exception as e:
            self.logger.error(f"Failed to connect to Milvus: {e}")
            raise

    @contextmanager
    def get_connection(self):
        """连接上下文管理器"""
        try:
            yield
        except Exception as e:
            self.logger.error(f"Database operation error: {e}")
            raise

    def _get_embedding(self, text: str, is_query=False):
        if not text or not text.strip():
            self.logger.error("Empty text provided for embedding")
            return [0.0] * self.vector_dim
        try:
            if isinstance(self.embedding_model, SentenceTransformerEmbeddingFunction):
                if is_query:
                    response = self.embedding_model._encode_query(text)
                    return response
                else:
                    response = self.embedding_model._encode_document(text)
                    return response
            elif isinstance(self.embedding_model, LiteLLMModel):
                return self.embedding_model.query(text)
            else:
                if is_query:
                    return self.embed_client.feature_extraction(
                        text, model="http://localhost:8080/embed", prompt_name="query"
                    )[0]
                else:
                    return self.embed_client.feature_extraction(text, model="http://localhost:8080/embed")[0]
        except Exception as e:
            self.logger.error(f"Failed to get embedding for text: {e}")
            return [0.0] * self.vector_dim

    def _init_collection(self):
        """初始化集合"""
        try:
            if self.drop_collection and self.collection_name in utility.list_collections():
                utility.drop_collection(self.collection_name)
                self.logger.info(f"Dropped existing collection: {self.collection_name}")

            if self.collection_name in utility.list_collections():
                self.collection = Collection(self.collection_name)
                self.logger.info(f"Using existing collection: {self.collection_name}")
                return

            # 根据集合名称创建不同的字段结构
            fields = self._get_collection_fields()
            schema = CollectionSchema(fields, description=f"{self.collection_name} schema")
            self.collection = Collection(self.collection_name, schema)

            # 创建索引
            self._create_indexes()
            self.collection.load()
            self.logger.info(f"Created and loaded collection: {self.collection_name}")

        except Exception as e:
            self.logger.error(f"Failed to initialize collection: {e}")
            raise

    def _get_collection_fields(self):
        """根据集合名称获取字段定义"""
        if self.collection_name == "Stage_3_2":
            return [
                FieldSchema(
                    name="id",
                    dtype=DataType.VARCHAR,
                    is_primary=True,
                    auto_id=False,
                    max_length=64,
                ),
                FieldSchema(name="problem", dtype=DataType.VARCHAR, max_length=512),
                FieldSchema(
                    name="problem_vector",
                    dtype=DataType.FLOAT_VECTOR,
                    dim=self.vector_dim,
                ),
                FieldSchema(name="solution", dtype=DataType.VARCHAR, max_length=512),
                FieldSchema(
                    name="solution_vector",
                    dtype=DataType.FLOAT_VECTOR,
                    dim=self.vector_dim,
                ),
                FieldSchema(name="action", dtype=DataType.VARCHAR, max_length=512),
                FieldSchema(
                    name="action_vector",
                    dtype=DataType.FLOAT_VECTOR,
                    dim=self.vector_dim,
                ),
            ]
        elif self.collection_name == "Stage_4":
            return [
                FieldSchema(
                    name="id",
                    dtype=DataType.VARCHAR,
                    is_primary=True,
                    auto_id=False,
                    max_length=64,
                ),
                FieldSchema(name="problem", dtype=DataType.VARCHAR, max_length=512),
                FieldSchema(name="solution", dtype=DataType.VARCHAR, max_length=512),
                FieldSchema(name="action", dtype=DataType.VARCHAR, max_length=512),
                FieldSchema(
                    name="problem_vector",
                    dtype=DataType.FLOAT_VECTOR,
                    dim=self.vector_dim,
                ),
                FieldSchema(
                    name="solution_vector",
                    dtype=DataType.FLOAT_VECTOR,
                    dim=self.vector_dim,
                ),
                FieldSchema(
                    name="action_vector",
                    dtype=DataType.FLOAT_VECTOR,
                    dim=self.vector_dim,
                ),
            ]
        else:
            raise ValueError(f"Unsupported collection name: {self.collection_name}")

    def _create_indexes(self):
        """创建向量索引"""
        index_params = {
            "index_type": self.config.index_type,
            "metric_type": self.config.metric_type,
            "params": {"nlist": self.config.nlist},
        }

        vector_fields = ["problem_vector", "solution_vector", "action_vector"]
        for field in vector_fields:
            try:
                self.collection.create_index(field, index_params)
                self.logger.info(f"Created index for field: {field}")
            except Exception as e:
                self.logger.warning(f"Failed to create index for {field}: {e}")

    def insert_entry(self, **kwargs):
        """插入单个条目"""
        try:
            entry_id = str(uuid.uuid4())

            if self.collection_name == "Stage_3_2":
                required = ["problem", "solution", "action"]
                for f in required:
                    if f not in kwargs:
                        raise ValueError(f"Missing field '{f}' for Stage_3_2")

                problem_vector = self._get_embedding(str(kwargs["problem"]))
                solution_vector = self._get_embedding(str(kwargs["solution"]))
                action_vector = self._get_embedding(str(kwargs["action"]))

                # 去重检查
                if self._check_duplicate(problem_vector, self.config.similarity_threshold):
                    self.logger.info(f"Duplicate entry detected (similarity > {self.config.similarity_threshold})")
                    return None

                data = [
                    [entry_id],
                    [kwargs["problem"]],
                    [problem_vector],
                    [kwargs["solution"]],
                    [solution_vector],
                    [kwargs["action"]],
                    [action_vector],
                ]
            elif self.collection_name == "Stage_4":
                required = ["PR", "Commit", "Test_command", "log_parser", "Description"]
                for f in required:
                    if f not in kwargs:
                        raise ValueError(f"Missing field '{f}' for Stage_4")
                vector = self._get_embedding(kwargs["Description"])
                data = [
                    [entry_id],
                    [kwargs["Org"]],
                    [kwargs["Repo"]],
                    [kwargs["PR"]],
                    [kwargs["Commit"]],
                    [kwargs["Test_command"]],
                    [kwargs["log_parser"]],
                    [kwargs["Description"]],
                    [vector],
                ]
            else:
                raise ValueError("Unsupported collection name")

            with self.get_connection():
                self.collection.insert(data)

            return entry_id

        except Exception as e:
            self.logger.error(f"Failed to insert entry: {e}")
            return None

    def _check_duplicate(self, query_vector, similarity_threshold):
        """
        内部方法：检查是否存在相似向量
        :param query_vector: 待检查的向量
        :param similarity_threshold: 相似度阈值
        :return: True(存在重复)或 False
        """
        try:
            search_params = {"metric_type": self.config.metric_type, "params": {"nprobe": self.config.nprobe}}

            results = self.collection.search(
                data=[query_vector],
                anns_field="problem_vector" if self.collection_name == "Stage_3_2" else "vector",
                param=search_params,
                limit=1,
                output_fields=["id"],
            )

            if results and results[0] and results[0][0].distance > similarity_threshold:
                return True

            return False
        except Exception as e:
            self.logger.error(f"Error checking duplicates: {e}")
            return False

    def query_similar(self, query_text: str, topk: int = 3):
        """向量匹配方式查询相似内容"""
        if not query_text or not query_text.strip():
            self.logger.warning("Empty query text provided")
            return []

        try:
            query_vector = self._get_embedding(query_text, is_query=True)
            self.collection.load()

            if self.collection_name == "Stage_3_2":
                output_fields = ["problem", "solution", "action"]
            elif self.collection_name == "Stage_4":
                output_fields = ["problem", "solution", "action"]
            else:
                raise ValueError("Unsupported collection name")

            search_params = {"metric_type": self.config.metric_type, "params": {"nprobe": self.config.nprobe}}

            results = self.collection.search(
                data=[query_vector],
                anns_field="problem_vector",
                param=search_params,
                limit=topk,
                output_fields=output_fields,
            )
            matches = []
            for hit in results[0]:
                match = {field: hit.entity.get(field) for field in output_fields}
                match["score"] = hit.distance
                match["id"] = hit.id
                matches.append(match)

            return matches

        except Exception as e:
            self.logger.error(f"Query similar failed: {e}")
            return []

    def hybrid_query(self, language: str, cicd: str, topk: int = 3):
        """混合查询：基于语言和CICD的双向量查询"""
        if not language or not cicd:
            self.logger.warning("Empty language or cicd provided")
            return []

        try:
            language_vector = self._get_embedding(language, is_query=True)
            cicd_vector = self._get_embedding(cicd, is_query=True)
            self.collection.load()

            if self.collection_name == "Stage_3_2":
                output_fields = ["problem", "solution", "action"]
            elif self.collection_name == "Stage_4":
                output_fields = ["problem", "solution", "action"]
            else:
                raise ValueError("Unsupported collection name")

            # 1. problem_vector查询
            req_problem_1 = AnnSearchRequest(
                data=[language_vector],
                anns_field="problem_vector",
                param={"metric_type": self.config.metric_type, "params": {"nprobe": self.config.nprobe}},
                limit=topk,
            )

            # 2. solution_vector查询
            req_problem_2 = AnnSearchRequest(
                data=[cicd_vector],
                anns_field="solution_vector",
                param={"metric_type": self.config.metric_type, "params": {"nprobe": self.config.nprobe}},
                limit=topk,
            )

            # 3. 执行混合搜索（使用加权重排序）
            results = self.collection.hybrid_search(
                reqs=[req_problem_1, req_problem_2],
                rerank=WeightedRanker(0.5, 0.5),  # 两个查询权重相等，可调整
                limit=topk,
                output_fields=output_fields,
            )

            matches = []
            for hit in results[0]:
                match = {field: hit.entity.get(field) for field in output_fields}
                match["score"] = hit.distance
                match["id"] = hit.id
                matches.append(match)

            return matches

        except Exception as e:
            self.logger.error(f"Hybrid query failed: {e}")
            return []

    def retrieve_knowledge(self, metadata: Dict, topk: int = 10) -> List[Dict]:
        if metadata["language_guidelines"] != "" and metadata["workflow_guidelines"] != "":
            return self.hybrid_query(metadata["language_guidelines"], metadata["workflow_guidelines"], topk=topk)
        elif metadata["language_guidelines"] != "" and metadata["readme"] != "":
            return self.query_similar(metadata["language_guidelines"], topk=topk)
        elif metadata["language_guidelines"] != "":
            return self.query_similar(metadata["language_guidelines"], topk=topk)
        elif metadata["readme"] != "":
            return self.query_similar(metadata["readme"], topk=topk)
        else:
            return []

    def insert_knowledge(self, input_dir: str):
        if not os.path.exists(input_dir):
            self.logger.error(f"Knowledge directory does not exist: {input_dir}")
            return

        entries_to_insert = []

        # 遍历文件夹中的所有文件
        for filename in tqdm(
            os.listdir(input_dir),
            desc="Extracting triples from json files",
        ):
            if filename.endswith(".json"):
                file_path = os.path.join(input_dir, filename)
                try:
                    with open(file_path, "r", encoding="utf-8") as f:
                        data = json.load(f)
                        if "triples" in data and len(data["triples"]) > 0:
                            entries_to_insert.extend(data["triples"])

                except json.JSONDecodeError:
                    self.logger.warning(f"File {filename} is not valid JSON format")
                except Exception as e:
                    self.logger.error(f"Error processing file {filename}: {str(e)}")

        # 批量插入
        if entries_to_insert:
            for entry in tqdm(entries_to_insert, desc="Inserting knowledge"):
                self.insert_entry(**entry)
        else:
            self.logger.warning("No knowledge entries found to insert")

    def get_collection_stats(self) -> Dict[str, Any]:
        """获取集合统计信息"""
        try:
            stats = {
                "collection_name": self.collection_name,
                "entity_count": self.collection.num_entities,
                "config": {
                    "vector_dim": self.vector_dim,
                    "similarity_threshold": self.config.similarity_threshold,
                    "batch_size": self.config.batch_size,
                },
            }
            return stats
        except Exception as e:
            self.logger.error(f"Failed to get collection stats: {e}")
            return {}

    def health_check(self) -> bool:
        """健康检查"""
        try:
            # 检查连接
            collections = utility.list_collections()
            if self.collection_name not in collections:
                return False

            # 检查集合状态
            self.collection.load()
            return True

        except Exception as e:
            self.logger.error(f"Health check failed: {e}")
            return False


if __name__ == "__main__":
    # Type1: LiteLLM
    # embedding_model = get_model(
    #     EmbeddingModelConfig(
    #         name="huggingface/Qwen/Qwen3-Embedding-0.6B",
    #         api_base="http://localhost:8080/",
    #     ),
    #     {},
    # )
    # memory_db = LongTermMemoryDB(embedding_model=embedding_model)

    # Type2: SentenceTransformer
    config = MilvusConfig(vector_dim=4096, collection_name="Stage_3_2")
    embedding_model = SentenceTransformerEmbeddingFunction(
        model_name="Qwen/Qwen3-Embedding-8B", device="cuda:1", batch_size=1
    )
    memory_db = LongTermMemoryDB(config=config, embedding_model=embedding_model)
    knowledge_dirs = [
        "data/knowledge_from_traj",
        "data/knowledge/deepseek-r1_2025-06-06",
        "data/knowledge/deepseek-v3_2025-06-06",
        "data/knowledge/gemini-2.5-pro-preview-05-06_2025-05-20",
    ]
    for knowledge_dir in knowledge_dirs:
        # memory_db.insert_knowledge(knowledge_dir)
        pass

    print(memory_db.get_collection_stats())

    # Type3: HuggingFace
    embedding_model = InferenceClient()
    memory_db = LongTermMemoryDB(embedding_model=embedding_model)
