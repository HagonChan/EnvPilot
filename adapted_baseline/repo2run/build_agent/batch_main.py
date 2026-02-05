# Copyright (2025) Bytedance Ltd. and/or its affiliates 

# Licensed under the Apache License, Version 2.0 (the "License"); 
# you may not use this file except in compliance with the License. 
# You may obtain a copy of the License at 

#     https://www.apache.org/licenses/LICENSE-2.0

# Unless required by applicable law or agreed to in writing, software 
# distributed under the License is distributed on an "AS IS" BASIS, 
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. 
# See the License for the specific language governing permissions and 
# limitations under the License. 


import argparse
import json
import multiprocessing
import threading
import time
import os
import sys
from datetime import datetime, timedelta
from utils.sandbox import Sandbox
from agents.configuration import Configuration
import subprocess
from utils.waiting_list import WaitingList
from utils.conflict_list import ConflictList
from utils.integrate_dockerfile import integrate_dockerfile
from utils.logger import set_task_context, log_info, log_error, log_warning
import shutil
from concurrent.futures import ProcessPoolExecutor, as_completed
from tqdm import tqdm


def move_files_to_repo(source_folder):
    """将源文件夹中的文件移动到repo子目录"""
    target_folder = os.path.join(source_folder, 'repo_inner_directory_long_long_name_to_avoid_duplicate')
    
    if not os.path.exists(target_folder):
        os.mkdir(target_folder)
    
    for item in os.listdir(source_folder):
        item_path = os.path.join(source_folder, item)
        
        if item == 'repo_inner_directory_long_long_name_to_avoid_duplicate':
            continue
        
        shutil.move(item_path, os.path.join(target_folder, item))

    os.rename(target_folder, os.path.join(source_folder, 'repo'))


def download_repo(root_path, full_name, sha, output_dir_name):
    """下载repo到utils/repo文件夹"""
    if len(full_name.split('/')) != 2:
        raise Exception("full_name Wrong!!!")
    
    # 使用output_dir_name作为唯一标识，避免并发冲突
    # output_dir_name 格式为: author/repo_name_pull_number
    repo_base_path = f'{root_path}/utils/repo/{output_dir_name}'
    
    # 确保目录存在
    if os.path.exists(repo_base_path):
        shutil.rmtree(repo_base_path)
    os.makedirs(repo_base_path, exist_ok=True)
    
    download_cmd = f"git clone https://github.com/{full_name}.git repo"
    subprocess.run(download_cmd, cwd=repo_base_path, check=True, shell=True)
    
    # 删除可能存在的Dockerfile
    dockerfile_path = f"{repo_base_path}/repo/Dockerfile"
    if os.path.exists(dockerfile_path) and not os.path.isdir(dockerfile_path):
        os.remove(dockerfile_path)
    
    # 运行pipreqs
    pipreqs_dir = f'{repo_base_path}/repo/.pipreqs'
    os.makedirs(pipreqs_dir, exist_ok=True)
    pipreqs_cmd = "pipreqs --savepath=.pipreqs/requirements_pipreqs.txt --force"
    try:
        pipreqs_result = subprocess.run(
            pipreqs_cmd, 
            cwd=f"{repo_base_path}/repo", 
            check=True, 
            shell=True, 
            capture_output=True
        )
        with open(f'{pipreqs_dir}/pipreqs_output.txt', 'w') as w1:
            w1.write(pipreqs_result.stdout.decode('utf-8'))
        with open(f'{pipreqs_dir}/pipreqs_error.txt', 'w') as w2:
            w2.write(pipreqs_result.stderr.decode('utf-8'))
    except:
        pass

    # checkout到指定commit
    checkout_cmd = f"git checkout {sha}"
    subprocess.run(checkout_cmd, cwd=f'{repo_base_path}/repo', capture_output=True, shell=True)

    # 保存sha信息到输出目录
    output_path = f'{root_path}/output/{output_dir_name}'
    os.makedirs(output_path, exist_ok=True)
    with open(f'{output_path}/sha.txt', 'w') as w1:
        w1.write(sha)


def process_single_task(task_info):
    """处理单个任务的函数，供并发调用"""
    full_name = task_info['full_name']
    sha = task_info['sha']
    pull_number = task_info['pull_number']
    root_path = task_info['root_path']
    llm = task_info['llm']
    instance_id = task_info.get('instance_id', '')
    
    # 使用 author/repo_name_pull_number 作为输出目录名
    author_name = full_name.split('/')[0]
    repo_name = full_name.split('/')[1]
    output_dir_name = f"{author_name}/{repo_name}_{pull_number}"
    
    # 设置当前任务的日志上下文
    set_task_context(output_dir_name)
    
    result = {
        'full_name': full_name,
        'pull_number': pull_number,
        'instance_id': instance_id,
        'output_dir': output_dir_name,
        'status': 'pending',
        'message': ''
    }
    
    try:
        start_time = time.time()
        log_info(f"开始处理: {full_name} (PR #{pull_number})")
        
        waiting_list = WaitingList()
        conflict_list = ConflictList()
        
        output_path = f'{root_path}/output/{output_dir_name}'
        repo_path = f'{root_path}/utils/repo/{output_dir_name}'
        
        # 清理旧的输出目录
        if os.path.exists(f'{output_path}/patch'):
            shutil.rmtree(f'{output_path}/patch')
        
        os.makedirs(output_path, exist_ok=True)
        
        # 设置超时定时器
        timeout_event = threading.Event()
        def timer():
            timeout_event.wait(3600 * 2)  # 2小时超时
            if not timeout_event.is_set():
                log_warning(f"任务超时: {full_name} (PR #{pull_number})")
        
        timer_thread = threading.Thread(target=timer)
        timer_thread.daemon = True
        timer_thread.start()
        
        # 下载仓库 (会自动清理和创建repo目录)
        log_info(f"开始下载仓库...")
        download_repo(root_path, full_name, sha, output_dir_name)
        log_info(f"仓库下载完成")
        
        trajectory = []
        
        # 创建沙箱并运行配置agent
        log_info(f"创建沙箱容器...")
        configuration_sandbox = Sandbox("python:3.10", output_dir_name, root_path, model=llm)
        configuration_sandbox.start_container()
        log_info(f"沙箱容器创建完成")
        
        log_info(f"开始运行配置Agent...")
        configuration_agent = Configuration(
            configuration_sandbox, 
            'python:3.10', 
            output_dir_name, 
            root_path, 
            llm=llm,
            max_turn=50
        )
        msg, outer_commands = configuration_agent.run('/tmp', trajectory, waiting_list, conflict_list)
        log_info(f"配置Agent运行完成")
        
        # 保存结果
        with open(f'{output_path}/track.json', 'w') as w1:
            w1.write(json.dumps(msg, indent=4))
        
        commands = configuration_sandbox.stop_container()
        
        with open(f'{output_path}/inner_commands.json', 'w') as w2:
            w2.write(json.dumps(commands, indent=4))
        
        with open(f'{output_path}/outer_commands.json', 'w') as w3:
            w3.write(json.dumps(outer_commands, indent=4))
        
        # 保存任务元信息
        meta_info = {
            'repo': full_name,
            'pull_number': pull_number,
            'instance_id': instance_id,
            'base_commit': sha
        }
        with open(f'{output_path}/meta.json', 'w') as w4:
            w4.write(json.dumps(meta_info, indent=4))
        
        # 集成Dockerfile
        try:
            integrate_dockerfile(output_path)
            result['status'] = 'success'
            result['message'] = 'Generate success!'
            log_info(f"Dockerfile集成成功")
            with open(f'{output_path}/track.txt', 'a') as a1:
                a1.write('Generate success!\n')
        except Exception as e:
            result['status'] = 'partial'
            result['message'] = f'integrate_docker failed: {e}'
            log_warning(f"Dockerfile集成失败: {e}")
            with open(f'{output_path}/track.txt', 'a') as a1:
                a1.write(f'integrate_docker failed, reason:\n {e}\n')
        
        # 标记超时线程可以结束
        timeout_event.set()
        
        end_time = time.time()
        elapsed = end_time - start_time
        result['elapsed_seconds'] = elapsed
        log_info(f"任务完成, 耗时: {elapsed:.2f}秒")
        
    except Exception as e:
        import traceback
        result['status'] = 'failed'
        result['message'] = f"{type(e).__name__}: {str(e)}\n{traceback.format_exc()}"
        log_error(f"任务失败: {type(e).__name__}: {e}")
        traceback.print_exc()
    
    return result


def read_jsonl_and_filter_python(jsonl_path):
    """读取JSONL文件并过滤出Python项目"""
    tasks = []
    with open(jsonl_path, 'r', encoding='utf-8') as f:
        for line in f:
            line = line.strip()
            if not line:
                continue
            try:
                data = json.loads(line)
                # 只处理Python项目
                if data.get('language', '').lower() == 'python':
                    tasks.append({
                        'repo': data['repo'],
                        'pull_number': data['pull_number'],
                        'base_commit': data['base_commit'],
                        'instance_id': data.get('instance_id', '')
                    })
            except json.JSONDecodeError as e:
                print(f"JSON解析错误: {e}")
                continue
    return tasks


def main():
    parser = argparse.ArgumentParser(description='批量处理JSONL文件中的Python仓库')
    parser.add_argument('--jsonl_path', type=str, required=True, 
                        help='JSONL文件路径')
    parser.add_argument('--root_path', type=str, required=True,
                        help='项目根路径')
    parser.add_argument('--llm', type=str, default='gpt-4o-2024-05-13',
                        help='使用的LLM模型名称')
    parser.add_argument('--concurrency', type=int, default=3,
                        help='并发数量 (默认: 3)')
    
    args = parser.parse_args()
    
    root_path = args.root_path
    if not os.path.isabs(root_path):
        root_path = os.path.abspath(root_path)
    
    jsonl_path = args.jsonl_path
    if not os.path.isabs(jsonl_path):
        jsonl_path = os.path.abspath(jsonl_path)
    
    # 读取并过滤Python任务
    print(f"读取JSONL文件: {jsonl_path}")
    tasks = read_jsonl_and_filter_python(jsonl_path)
    
    if not tasks:
        print("没有找到Python项目，退出。")
        return
    
    print(f"找到 {len(tasks)} 个Python项目待处理")
    
    # 准备任务信息
    task_infos = []
    for task in tasks:
        task_infos.append({
            'full_name': task['repo'],
            'sha': task['base_commit'],
            'pull_number': task['pull_number'],
            'instance_id': task.get('instance_id', ''),
            'root_path': root_path,
            'llm': args.llm
        })
    
    # 清理dangling docker images
    try:
        subprocess.run('docker rmi $(docker images --filter "dangling=true" -q) > /dev/null 2>&1', shell=True)
    except:
        pass
    
    # 记录开始时间
    total_start_time = time.time()
    
    # 存储结果
    results = []
    
    # 使用进程池并发处理，带进度条
    print(f"\n开始并发处理 (并发数: {args.concurrency})")
    print("=" * 60)
    
    with ProcessPoolExecutor(max_workers=args.concurrency) as executor:
        # 提交所有任务
        future_to_task = {executor.submit(process_single_task, task_info): task_info 
                         for task_info in task_infos}
        
        # 使用tqdm显示进度条
        with tqdm(total=len(task_infos), desc="处理进度", unit="个") as pbar:
            for future in as_completed(future_to_task):
                task_info = future_to_task[future]
                try:
                    result = future.result()
                    results.append(result)
                except Exception as e:
                    results.append({
                        'full_name': task_info['full_name'],
                        'pull_number': task_info['pull_number'],
                        'status': 'error',
                        'message': str(e)
                    })
                pbar.update(1)
    
    # 统计结果
    total_end_time = time.time()
    total_elapsed = total_end_time - total_start_time
    
    success_count = sum(1 for r in results if r['status'] == 'success')
    partial_count = sum(1 for r in results if r['status'] == 'partial')
    failed_count = sum(1 for r in results if r['status'] in ['failed', 'error'])
    
    print("\n" + "=" * 60)
    print("处理完成!")
    print(f"总耗时: {total_elapsed:.2f}秒 ({total_elapsed/60:.2f}分钟)")
    print(f"成功: {success_count}, 部分成功: {partial_count}, 失败: {failed_count}")
    print("=" * 60)
    
    # 保存处理结果摘要
    summary_path = os.path.join(root_path, 'output', 'batch_summary.json')
    summary = {
        'jsonl_path': jsonl_path,
        'total_tasks': len(tasks),
        'success': success_count,
        'partial': partial_count,
        'failed': failed_count,
        'total_time_seconds': total_elapsed,
        'results': results
    }
    with open(summary_path, 'w', encoding='utf-8') as f:
        json.dump(summary, f, indent=4, ensure_ascii=False)
    print(f"\n结果摘要已保存到: {summary_path}")


if __name__ == '__main__':
    main()
