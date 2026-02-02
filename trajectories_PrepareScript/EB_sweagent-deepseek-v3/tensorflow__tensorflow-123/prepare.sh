ls -la
ls -la .github/workflows
open "WORKSPACE"
open "README.md"
open "CONTRIBUTING.md"
ls -la tensorflow
open "tensorflow/BUILD"
open ".github/workflows/pylint-presubmit.yml"
open ".bazelrc"
ls -la tensorflow/tools/ci_build
open "tensorflow/tools/ci_build/ci_build.sh"
ls -la tensorflow/tools/ci_build/builds
open "tensorflow/tools/ci_build/builds/docker_test.sh"
bazel test //tensorflow/...
sudo apt-get update && sudo apt-get install -y bazel
apt-get update && apt-get install -y bazel
apt-get install -y wget && wget https://github.com/bazelbuild/bazel/releases/download/5.3.0/bazel-5.3.0-installer-linux-x86_64.sh && chmod +x bazel-5.3.0-installer-linux-x86_64.sh && ./bazel-5.3.0-installer-linux-x86_64.sh
apt-get install -y unzip
./bazel-5.3.0-installer-linux-x86_64.sh
bazel --version
rm -rf /usr/local/lib/bazel
wget https://releases.bazel.build/7.7.0/release/bazel-7.7.0-linux-x86_64 -O /usr/local/bin/bazel && chmod +x /usr/local/bin/bazel
mkdir -p /usr/local/bin && wget https://releases.bazel.build/7.7.0/release/bazel-7.7.0-linux-x86_64 -O /usr/local/bin/bazel && chmod +x /usr/local/bin/bazel
mkdir -p /usr/local/lib/bazel/bin && cd /usr/local/lib/bazel/bin && wget https://releases.bazel.build/7.7.0/release/bazel-7.7.0-linux-x86_64 && chmod +x bazel-7.7.0-linux-x86_64 && ln -s bazel-7.7.0-linux-x86_64 bazel
/usr/local/lib/bazel/bin/bazel --version
export PATH=$PATH:/usr/local/lib/bazel/bin
cd /testbed && bazel --version
python3 -m venv /testbed/venv
apt-get install -y python3 python3-venv
python3 -m venv /testbed/venv
source /testbed/venv/bin/activate
find /testbed -name "requirements_lock_*.txt"
pip install -r /testbed/requirements_lock_3_10.txt
python3 /testbed/configure.py
bazel build --config=opt //tensorflow/tools/pip_package:build_pip_package
open ".bazelrc"
bazel build -c opt //tensorflow/tools/pip_package:build_pip_package
open "tensorflow/tools/pip_package/BUILD"
ls -la tensorflow/tools/pip_package
bazel build -c opt //tensorflow/tools/pip_package:build_pip_package.py
bazel-bin/tensorflow/tools/pip_package/build_pip_package.py /tmp/tensorflow_pkg
bazel run -c opt //tensorflow/tools/pip_package:build_pip_package.py -- /tmp/tensorflow_pkg
open "tensorflow/tools/pip_package/BUILD"
bazel run -c opt //tensorflow/tools/pip_package:build_pip_package -- /tmp/tensorflow_pkg
bazel run -c opt //tensorflow/tools/pip_package:build_pip_package.py -- /tmp/tensorflow_pkg
/testbed/bazel-bin/tensorflow/tools/pip_package/build_pip_package.py /tmp/tensorflow_pkg
bazel build -c opt //tensorflow/tools/pip_package:build_pip_package
python3 /testbed/tensorflow/tools/pip_package/build_pip_package.py /tmp/tensorflow_pkg
bazel clean

