ls -la
open "GotoBLAS_02QuickInstall.txt"
sudo apt-get update && sudo apt-get install -y gcc gfortran make cmake
apt-get update && apt-get install -y gcc gfortran make cmake
make
make install
ls -la /opt/OpenBLAS
