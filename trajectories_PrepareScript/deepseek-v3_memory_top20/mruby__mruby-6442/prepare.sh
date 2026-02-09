ls
open "README.md"
open "Rakefile"
ls .github/workflows
open ".github/workflows/build.yml"
apt-get update && apt-get install -y build-essential ruby ruby-dev clang clang++ gcc g++ make bison git
apt-get clean && apt-get update
apt-get install -y build-essential ruby ruby-dev clang clang++ gcc g++ make bison git
apt-get install -y build-essential ruby ruby-dev gcc g++ make bison git
ruby -v && gcc --version
rake all test
