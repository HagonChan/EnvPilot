import os
import json

def remove_prompt_content_recursive(obj):
    if isinstance(obj, dict):
        obj.pop('prompt_content', None)
        for v in obj.values():
            remove_prompt_content_recursive(v)
    elif isinstance(obj, list):
        for item in obj:
            remove_prompt_content_recursive(item)

def remove_prompt_content_from_json_file(src_path, dst_path):
    with open(src_path, 'r', encoding='utf-8') as fin:
        data = json.load(fin)
    remove_prompt_content_recursive(data)
    with open(dst_path, 'w', encoding='utf-8') as fout:
        json.dump(data, fout, ensure_ascii=False, indent=2)

def process_all_json_files(src_folder, dst_folder):
    if not os.path.exists(dst_folder):
        os.makedirs(dst_folder)
    for filename in os.listdir(src_folder):
        if filename.endswith('.json'):
            src = os.path.join(src_folder, filename)
            dst = os.path.join(dst_folder, filename.replace('.json', '.cleaned.json'))
            remove_prompt_content_from_json_file(src, dst)

# 用法示例
if __name__ == "__main__":
    src_folder = os.path.dirname(os.path.abspath(__file__))
    dst_folder = os.path.join(src_folder, "cleaned_json")
    process_all_json_files(src_folder, dst_folder)