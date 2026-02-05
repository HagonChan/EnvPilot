"""Git 仓库克隆器 - 从 GitHub 克隆仓库"""

import os
import shutil
import logging
from pathlib import Path

import git


class GitRepoCloner:
    """Git 仓库克隆器"""
    
    def __init__(self, output_dir: str = "./repos"):
        self.output_dir = Path(output_dir)
        self.output_dir.mkdir(parents=True, exist_ok=True)
    
    def get_repo_dir_name(self, org: str, repo: str, commit: str) -> str:
        return f"{org}__{repo}@{commit}"
    
    def get_repo_dir_path(self, org: str, repo: str, commit: str) -> str:
        return str(self.output_dir / self.get_repo_dir_name(org, repo, commit))
    
    def clone_and_checkout(self, org: str, repo: str, commit: str) -> str:
        """
        克隆仓库并切换到指定 commit
        
        Returns:
            本地仓库路径
        """
        local_path = self.get_repo_dir_path(org, repo, commit)
        repo_url = f"https://github.com/{org}/{repo}"
        
        # 如果已存在，验证并返回
        if os.path.exists(local_path):
            try:
                repo_obj = git.Repo(local_path)
                repo_obj.git.checkout(commit)
                logging.info(f"Repository exists, checked out: {local_path}")
                return local_path
            except Exception as e:
                logging.warning(f"Existing repo invalid, re-cloning: {e}")
                shutil.rmtree(local_path, ignore_errors=True)
        
        # 克隆
        logging.info(f"Cloning {repo_url}...")
        repo_obj = git.Repo.clone_from(repo_url, local_path)
        
        # Checkout
        logging.info(f"Checking out {commit}...")
        repo_obj.git.checkout(commit)
        
        return local_path
    
    def clear_repo(self, org: str, repo: str, commit: str):
        """删除仓库"""
        local_path = self.get_repo_dir_path(org, repo, commit)
        if os.path.exists(local_path):
            shutil.rmtree(local_path, ignore_errors=True)
