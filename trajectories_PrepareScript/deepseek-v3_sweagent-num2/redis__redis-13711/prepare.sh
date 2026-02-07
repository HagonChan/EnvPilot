ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
open "Makefile"
open "src/Makefile"
open "README.md"
sudo apt-get update && sudo apt-get install tcl8.6 tclx -y
apt-get update && apt-get install tcl8.6 tclx -y
make
apt-get install build-essential -y
make
make test
