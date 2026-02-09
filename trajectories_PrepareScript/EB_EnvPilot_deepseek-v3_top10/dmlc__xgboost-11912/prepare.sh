ls -la
ls -la .github/workflows
open ".github/workflows/main.yml"
open ".github/workflows/python_tests.yml"
open "ops/conda_env/sdist_test.yml"
open "CMakeLists.txt"
open "README.md"
ls -la python-package
open "python-package/pyproject.toml"
open "Makefile"
ls -la jvm-packages
open "jvm-packages/pom.xml"
ls -la R-package
open "R-package/DESCRIPTION"
sudo apt-get update && sudo apt-get install -y libcurl4-openssl-dev libssl-dev libgit2-dev libxml2-dev gcc g++ build-essential python3-dev r-base-dev openjdk-8-jdk
apt-get update && apt-get install -y libcurl4-openssl-dev libssl-dev libgit2-dev libxml2-dev gcc g++ build-essential python3-dev r-base-dev openjdk-8-jdk
conda env create -f ops/conda_env/sdist_test.yml
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O miniconda.sh && bash miniconda.sh -b -p $HOME/miniconda && export PATH=$HOME/miniconda/bin:$PATH
curl -o miniconda.sh https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh && bash miniconda.sh -b -p $HOME/miniconda && export PATH=$HOME/miniconda/bin:$PATH
apt-get install -y curl
curl -o miniconda.sh https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh && bash miniconda.sh -b -p $HOME/miniconda && export PATH=$HOME/miniconda/bin:$PATH
export PATH=$HOME/miniconda/bin:$PATH && conda --version
conda env create -f ops/conda_env/sdist_test.yml
apt-get install -y python3.10 python3-pip
pip install numpy scipy nvidia-nccl-cu12
cd python-package && pip install -e .
cd .. && mkdir -p build && cd build && cmake ..
apt-get install -y cmake make ninja-build
cmake ..
cd .. && git submodule update --init --recursive
cd build && cmake ..
make -j$(nproc)
cd ../python-package && pip install -e .
cd ../tests/python && python -m pytest
pip install pytest
python -m pytest
pip install hypothesis pandas scikit-learn
python -m pytest
pip install graphviz pyarrow
python -m pytest
pip install matplotlib
python -m pytest
cd ../jvm-packages && mvn test
cd /testbed/jvm-packages && mvn test
apt-get install -y maven
mvn test
mvn -X test
ls -la /testbed/lib
cd /testbed && mkdir -p build && cd build && cmake .. && make -j$(nproc)

