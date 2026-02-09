ls -la
ls -la .github/workflows
open ".github/workflows/dynamic_arch.yml"
apt-get update && apt-get install -y gfortran cmake make gcc
apt-get install -y gfortran cmake make gcc
apt-get install -y gfortran cmake make gcc --fix-missing
gfortran --version && cmake --version && make --version && gcc --version
find_file README.md
open "/testbed/README.md"
open "/testbed/Makefile.rule"
make
make install
ls -la /opt/OpenBLAS
