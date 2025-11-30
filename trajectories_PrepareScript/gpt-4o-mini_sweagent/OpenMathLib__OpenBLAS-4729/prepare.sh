ls -l
open "Jenkinsfile"
open "azure-pipelines.yml"
make clean && make
apt-get update
apt-get install -y cmake gfortran make wget
make clean && make
make test
search_file test azure-pipelines.yml
ls -l
ls -l test
./test/cblat1
./test/dblat1
./test/sblat1
./test/zblat1
