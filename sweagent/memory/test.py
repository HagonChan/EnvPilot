# from huggingface_hub import InferenceClient

# client = InferenceClient()

# embedding = client.feature_extraction(
#     "What is deep learning?",
#     model="http://localhost:8080/embed",
#     prompt_name="query",
# )
# print(len(embedding[0]))

from litellm import embedding

response = embedding(
    model="huggingface/Qwen/Qwen3-Embedding-0.6B",  # add `openai/` prefix to model so litellm knows to route to OpenAI
    api_base="http://localhost:8080/",  # set API Base of your Custom OpenAI Endpoint
    input=["good morning from litellm"],
)
print(response)
