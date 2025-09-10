import json
from math import e
from typing import List, Dict, Any, Optional
from collections import defaultdict
from sweagent.agent.repo_analyzer import GitHubRepositoryAnalyzer
from sweagent.memory.LongTermMemoryDB import LongTermMemoryDB, MilvusConfig
from sweagent.memory.query_generator import QueryGenerator
from sweagent.utils.log import get_logger
from pymilvus.model.dense import SentenceTransformerEmbeddingFunction


class Retriever:
    """
    负责从向量数据库中检索知识，并使用RRF聚合结果。
    """

    def __init__(self, memory: LongTermMemoryDB):
        """
        初始化Retriever。

        Args:
            vector_db: 一个向量数据库的实例，需要有 `search(query, top_k)` 方法。
        """
        self.db = memory
        self.logger = get_logger("Retriever", emoji="🧠")

    def _reciprocal_rank_fusion(self, search_results_list: List[List[Dict]], k: int = 60) -> List[Dict]:
        """
        对多组搜索结果应用Reciprocal Rank Fusion (RRF)

        Args:
            search_results_list: 一个列表，其中每个元素都是一个查询返回的结果列表。
            k (int): RRF算法中的一个常量，用于平衡排名的影响。

        Returns:
            一个根据RRF分数重新排序的、去重的文档列表。
        """
        fused_scores = defaultdict(float)

        self.logger.info(f"Applying RRF to {len(search_results_list)} sets of search results.")

        # 遍历每个查询的结果列表
        for search_results in search_results_list:
            # 遍历该列表中的每个文档
            for rank, result in enumerate(search_results):
                doc_id = result["id"]
                # RRF核心公式：score = 1 / (k + rank)
                # 我们使用 rank+1 是因为 rank 从0开始
                rrf_score = 1.0 / (k + rank + 1)
                fused_scores[doc_id] += rrf_score

        # 根据融合后的分数对文档ID进行排序
        reranked_ids = sorted(fused_scores.keys(), key=lambda id: fused_scores[id], reverse=True)

        # 创建一个去重的、重排序的文档列表
        # 首先，我们需要一个从ID到完整文档的映射
        all_docs_map = {}
        for search_results in search_results_list:
            for result in search_results:
                if result["id"] not in all_docs_map:
                    all_docs_map[result["id"]] = {
                        "problem": result["problem"],
                        "solution": result["solution"],
                        "action": result["action"],
                    }

        final_results = [all_docs_map[doc_id] for doc_id in reranked_ids]

        self.logger.info(f"RRF resulted in {len(final_results)} unique, reranked items.")
        return final_results

    def retrieve_and_aggregate(self, queries: List[str], top_k_per_query: int = 3) -> List[Dict]:
        """
        执行多查询检索、RRF聚合和最后的结果格式化。

        Args:
            queries: 从第二阶段生成的假设性问题列表。
            top_k_per_query: 每个查询要检索的文档数量。

        Returns:
            一个有序的、聚合后的知识条目列表，每个条目包含Solution和Action。
        """
        if not queries:
            self.logger.warning("No queries provided for retrieval.")
            return []

        # 1. 并行或串行地为每个查询执行搜索
        # 在实际应用中，如果数据库支持，这里可以是并行的。
        all_search_results = []
        self.logger.info(f"Performing search for {len(queries)} queries...")
        for query in queries:
            results = self.db.query_similar(query, topk=top_k_per_query)
            if results:
                all_search_results.append(results)

        if not all_search_results:
            self.logger.warning("No relevant documents found for any of the queries.")
            return []

        # 2. 使用RRF聚合结果
        final_results = self._reciprocal_rank_fusion(all_search_results)

        return final_results


if __name__ == "__main__":
    with open("data/stage3_2_new_simplified.jsonl", "r") as f:
        data = [json.loads(line) for line in f]

    query_generator = QueryGenerator()
    embedding_model = SentenceTransformerEmbeddingFunction(
        model_name="Qwen/Qwen3-Embedding-8B", device="cuda:7", batch_size=1
    )
    milvus_config = MilvusConfig(collection_name="Stage_3_2")
    memory = LongTermMemoryDB(config=milvus_config, embedding_model=embedding_model)
    retriever = Retriever(memory)

    # 2. 执行检索和聚合
    for instance in data:
        analyzer = GitHubRepositoryAnalyzer(
            github_url=None,
            org=instance["org"],
            repo=instance["repo"],
            number=int(instance["number"]),
            commit=instance["commit"],
        )
        metadata = analyzer.create_metadata_file()
        query_generator = QueryGenerator()
        queries, profile = query_generator.generate_queries_from_guidelines(metadata)
        knowledge = retriever.retrieve_and_aggregate(queries)
        project_profile = profile.model_dump()
        instance["knowledge"] = knowledge
        instance["profile"] = project_profile
        instance["queries"] = queries
        retriever.logger.info(instance)
        break
