ls -la
ls -la .github/workflows
open ".github/workflows/dynamic_arch.yml"
open "Makefile"
open "Makefile.system"
sudo apt-get update && sudo apt-get install -y gfortran cmake ccache libtinfo5
apt-get update && apt-get install -y gfortran cmake ccache libtinfo5
make all
