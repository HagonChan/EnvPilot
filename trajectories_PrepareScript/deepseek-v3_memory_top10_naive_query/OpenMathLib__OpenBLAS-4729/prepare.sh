ls -la
ls -la .github/workflows
open ".github/workflows/dynamic_arch.yml"
apt-get update && apt-get install -y gfortran cmake ccache libtinfo5
open "GotoBLAS_02QuickInstall.txt"
make
make PREFIX=/usr/local install
ls -la /usr/local/lib | grep openblas
