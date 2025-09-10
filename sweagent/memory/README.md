## Usage

**Step 0**: 环境配置，在conda环境中
```bash
pip install pymilvus
pip install docker
```
拉取milvus镜像和启动脚本
```bash
wget https://github.com/milvus-io/milvus/releases/download/v2.5.13/milvus-standalone-docker-compose.yml -O docker-compose.yml
```

**Step 1**: 在utils目录下，或者新建一个milvus目录，把docker-compose.yml 放置目录下，执行以下命令启动milvus服务
```bash
sudo docker compose up -d
```

**Step 2**:  LongTermMemoryDB.py
+ Init
```python
# 初始化数据库
memory_db = LongTermMemoryDB(api_key=OPENAI_API_KEY,collection_name="Stage_3_2")
```
+ Insert
```python
 # 示例插入
    entry_id = memory_db.insert_entry(
        PR="PR#123",
        Commit="a1b2c3d",
        Prepare="测试向量存储与检索系统",
        Description="这是一个测试描述，用于演示如何将文本嵌入并存入 Milvus 向量数据库。"
    )
    print(f"Inserted entry with ID: {entry_id}")
```

+ Search_sim, 向量相似度查询
```python
    # 示例查询
    query = "如何使用向量数据库存储文本？"
    results = memory_db.query_similar(query_text=query, top_k=3)

    print("\n相似内容查询结果:")
    for i, match in enumerate(results, 1):
        print(f"\n匹配项 {i}:")
        print(f"PR: {match['PR']}")
        print(f"Commit: {match['Commit']}")
        print(f"Prepare: {match['Prepare']}")
        print(f"Description: {match['Description']}")
        print(f"Score: {match['Score']:.4f}")

```

+ + query (结构化查询)
```python
  # 示例查询
    pr = "996"
    Org = "astropy"
    Repo = "astropy"
    # 结构化查询
    result = memory_db.query_by_pr(Org, Repo, pr)
    if len(result) > 0:
        print(result[0])
```