ls -la
open "tox.ini"
ls -la .github/workflows
open ".github/workflows/ci_workflows.yml"
apt-get update && apt-get install -y language-pack-de tzdata language-pack-fr graphviz git g++ pkg-config python3 python3-configobj python3-numpy python3-ply python3-venv cython3 libwcs7 wcslib-dev libcfitsio-dev liberfa1
add-apt-repository ppa:deadsnakes/ppa -y && apt-get update && apt-get install -y python3.8 python3.9 python3.10 python3-pip
apt-get install -y software-properties-common
add-apt-repository ppa:deadsnakes/ppa -y && apt-get update && apt-get install -y python3.8 python3.9 python3.10 python3-pip
pip install --upgrade tox
python3.8 --version && python3.9 --version && python3.10 --version
tox
open "tox.ini"
edit 'passenv = HOME WINDIR LC_ALL LC_CTYPE CC CI IS_CRON ARCH_ON_CI TEST_READ_HUGE_FILE' 'passenv = HOME,WINDIR,LC_ALL,LC_CTYPE,CC,CI,IS_CRON,ARCH_ON_CI,TEST_READ_HUGE_FILE' True
insert 'passenv = HOME,WINDIR,LC_ALL,LC_CTYPE,CC,CI,IS_CRON,ARCH_ON_CI,TEST_READ_HUGE_FILE' 21
edit 'passenv = HOME WINDIR LC_ALL LC_CTYPE CC CI IS_CRON ARCH_ON_CI TEST_READ_HUGE_FILE' '' True
insert '' 23
edit 'passenv = HOME WINDIR LC_ALL LC_CTYPE CC CI IS_CRON ARCH_ON_CI TEST_READ_HUGE_FILE' '' True
tox
insert '' 23
edit 'passenv = HOME WINDIR LC_ALL LC_CTYPE CC CI IS_CRON ARCH_ON_CI TEST_READ_HUGE_FILE' '' True
insert '' 23
tox
insert '' 23
tox
insert '' 23
tox
insert '' 23
tox
insert '' 23
tox
insert '' 23
tox
insert '' 23
tox
insert '' 23
tox
insert '' 23
tox
insert '' 23
tox
insert '' 23
tox
insert '' 23
tox
insert '' 23
tox
insert '' 23
tox
insert '' 23

