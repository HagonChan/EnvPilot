ls -la
ls -la .github/workflows
open ".github/workflows/arm-ci.yml"
open "README.md"
ls -la tensorflow/tools/ci_build
open "tensorflow/tools/ci_build/ci_build.sh"
open "tensorflow/tools/ci_build/rel/ubuntu/cpu_arm64_test.sh"
python3.10 --version
sudo apt-get update && sudo apt-get install -y python3.10
apt-get update && apt-get install -y python3.10
python3.10 --version
python3.10 -m pip --version
python3.10 -m ensurepip --upgrade
apt-get install -y python3.10-pip
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py && python3.10 get-pip.py
apt-get install -y curl
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py && python3.10 get-pip.py
python3.10 -m pip --version
find . -name "requirements*.txt"
open "./requirements_lock_3_10.txt"
python3.10 -m pip install --require-hashes -r requirements_lock_3_10.txt
bazel --version
curl -LO https://github.com/bazelbuild/bazel/releases/download/6.5.0/bazel-6.5.0-installer-linux-x86_64.sh && chmod +x bazel-6.5.0-installer-linux-x86_64.sh && ./bazel-6.5.0-installer-linux-x86_64.sh
curl -LO https://github.com/bazelbuild/bazel/releases/download/6.5.0/bazel-6.5.0-installer-linux-x86_64.sh && chmod +x bazel-6.5.0-installer-linux-x86_64.sh && ./bazel-6.5.0-installer-linux-x86_64.sh
apt-get install -y bazel
apt-get install -y wget && wget https://storage.googleapis.com/bazel-apt/doc/apt-key.pub.gpg -O /etc/apt/trusted.gpg.d/bazel.asc && echo "deb [arch=amd64] https://storage.googleapis.com/bazel-apt stable jdk1.8" | tee /etc/apt/sources.list.d/bazel.list && apt-get update && apt-get install -y bazel
bazel --version
apt-get install -y bazel-7.7.0
bazel --version
export TF_NEED_CUDA=0 && export TF_NEED_ROCM=0 && export TF_NEED_OPENCL=0 && export TF_NEED_OPENCL_SYCL=0 && export TF_NEED_COMPUTECPP=0 && export TF_NEED_MPI=0 && export TF_ENABLE_XLA=1
bazel test --config=opt --config=noaws --config=nogcp --config=nohdfs --config=nonccl //tensorflow/... -- //tensorflow/... -//tensorflow/python/integration_testing/... -//tensorflow/compiler/tests/... -//tensorflow/lite/...
find . -name ".bazelrc"
open "./.bazelrc"
cd /testbed && bazel test --config=opt --config=noaws --config=nogcp --config=nohdfs --config=nonccl //tensorflow/... -- //tensorflow/... -//tensorflow/python/integration_testing/... -//tensorflow/compiler/tests/... -//tensorflow/lite/...
cd /testbed && bazel --bazelrc=.bazelrc test --config=opt --config=noaws --config=nogcp --config=nohdfs --config=nonccl //tensorflow/... -- //tensorflow/... -//tensorflow/python/integration_testing/... -//tensorflow/compiler/tests/... -//tensorflow/lite/...
cd /testbed && bazel test -c opt --config=noaws --config=nogcp --config=nohdfs --config=nonccl //tensorflow/... -- //tensorflow/... -//tensorflow/python/integration_testing/... -//tensorflow/compiler/tests/... -//tensorflow/lite/...
cd /testbed && bazel test -c opt //tensorflow/... -- //tensorflow/... -//tensorflow/python/integration_testing/... -//tensorflow/compiler/tests/... -//tensorflow/lite/...
which python3.10
cd /testbed && bazel test --python_path=/usr/bin/python3.10 -c opt //tensorflow/... -- //tensorflow/... -//tensorflow/python/integration_testing/... -//tensorflow/compiler/tests/... -//tensorflow/lite/...
find . -name "WORKSPACE*"
open "./WORKSPACE"
edit 'default_python_version = "system",' 'default_python_version = "system",
    python_interpreter = "/usr/bin/python3.10",' True
cd /testbed && bazel test --python_path=/usr/bin/python3.10 -c opt //tensorflow/... -- //tensorflow/... -//tensorflow/python/integration_testing/... -//tensorflow/compiler/tests/... -//tensorflow/lite/...
export PYTHON_BIN_PATH=/usr/bin/python3.10 && cd /testbed && bazel test --python_path=/usr/bin/python3.10 -c opt //tensorflow/... -- //tensorflow/... -//tensorflow/python/integration_testing/... -//tensorflow/compiler/tests/... -//tensorflow/lite/...
mkdir -p /testbed/bazel-python-bin && ln -sf /usr/bin/python3.10 /testbed/bazel-python-bin/python3
export PYTHON_BIN_PATH=/testbed/bazel-python-bin/python3 && cd /testbed && bazel test --python_path=/testbed/bazel-python-bin/python3 -c opt //tensorflow/... -- //tensorflow/... -//tensorflow/python/integration_testing/... -//tensorflow/compiler/tests/... -//tensorflow/lite/...
edit 'python_interpreter = "/usr/bin/python3.10",' '' True
python3.10 -m venv /testbed/venv && source /testbed/venv/bin/activate && pip install -r /testbed/requirements_lock_3_10.txt
apt-get install -y python3.10-venv

