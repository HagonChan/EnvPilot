ls -la
open ".travis.yml"
open "Makefile"
apt-get update && apt-get install -y gcc gfortran make
make DYNAMIC_ARCH=1 TARGET=NEHALEM NUM_THREADS=32

make -C utest DYNAMIC_ARCH=1 TARGET=NEHALEM NUM_THREADS=32
