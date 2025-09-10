import docker

class MilvusManager:
    def __init__(self):
        self.client = docker.from_env()
        self.container_names = {
            "etcd": "milvus-etcd",
            "minio": "milvus-minio",
            "milvus": "milvus-standalone"
        }

    def _remove_if_exists(self, name):
        try:
            container = self.client.containers.get(name)
            container.stop()
            container.remove()
            print(f"[+] 移除旧容器: {name}")
        except docker.errors.NotFound:
            pass

    def start(self):
        # 清理已存在的容器
        for name in self.container_names.values():
            self._remove_if_exists(name)

        print("[*] 启动 Milvus 依赖服务...")

        # 启动 etcd
        self.client.containers.run(
            "quay.io/coreos/etcd:v3.5.5",
            name=self.container_names["etcd"],
            ports={'2379/tcp': 2379},
            environment={
                "ETCD_AUTO_COMPACTION_MODE": "revision",
                "ETCD_AUTO_COMPACTION_RETENTION": "1000",
                "ETCD_QUOTA_BACKEND_BYTES": "4294967296",
                "ETCD_SNAPSHOT_COUNT": "50000"
            },
            detach=True
        )

        # 启动 minio
        self.client.containers.run(
            "minio/minio:RELEASE.2023-03-20T20-16-18Z",
            name=self.container_names["minio"],
            command="server /data",
            ports={'9000/tcp': 9000},
            environment={
                "MINIO_ACCESS_KEY": "minioadmin",
                "MINIO_SECRET_KEY": "minioadmin"
            },
            detach=True
        )

        print("[*] 启动 Milvus 主服务...")

        # 启动 Milvus
        self.client.containers.run(
            "milvusdb/milvus:v2.4.3",
            name="milvus-standalone",
            ports={'19530/tcp': 19530, '9091/tcp': 9091},
            detach=True,
        )



        print("[✓] Milvus 启动完成，服务运行中！")

    def stop(self):
        print("[*] 正在停止所有 Milvus 容器...")
        for name in self.container_names.values():
            try:
                container = self.client.containers.get(name)
                container.stop()
                print(f"[✓] 停止容器: {name}")
            except docker.errors.NotFound:
                print(f"[ ] 容器不存在: {name}")

    def restart(self):
        self.stop()
        self.start()

    def logs(self, service="milvus"):
        name = self.container_names.get(service)
        if not name:
            print(f"[!] 未知服务名: {service}")
            return
        try:
            container = self.client.containers.get(name)
            print(container.logs(tail=100).decode())
        except docker.errors.NotFound:
            print(f"[!] 容器不存在: {name}")

if __name__ == "__main__":
    mgr = MilvusManager()

    # 启动服务
    mgr.start()

    # 查看 Milvus 日志
    # mgr.logs("milvus")

    # 停止服务
    # mgr.stop()

    # 重启服务
    # mgr.restart()
