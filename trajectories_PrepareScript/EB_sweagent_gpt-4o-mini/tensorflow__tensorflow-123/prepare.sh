

find_file '*.yml'
open ".github/workflows/arm-ci.yml"
open ".github/workflows/arm-ci-extended.yml"
find_file requirements.txt
find_file README.md
open "README.md"
search_file 'build from source' README.md
apt update
apt install -y build-essential python3-dev libatlas-base-dev libhdf5-dev
./tensorflow/tools/ci_build/ci_build.sh cpu.arm64 bash tensorflow/tools/ci_build/rel/ubuntu/cpu_arm64_test.sh
apt install -y docker.io
./tensorflow/tools/ci_build/ci_build.sh cpu.arm64 bash tensorflow/tools/ci_build/rel/ubuntu/cpu_arm64_test.sh
systemctl start docker
docker run hello-world
search_dir test
ls -R
find tensorflow -type f -executable
tensorflow/tools/lib_package/libtensorflow_test.sh
find_file '*.sh' tensorflow/tools
tensorflow/tools/gcs_test/gcs_smoke.sh
