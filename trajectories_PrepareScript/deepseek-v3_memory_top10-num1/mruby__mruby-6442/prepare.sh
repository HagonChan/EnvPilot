ls -la
ls -la .github/workflows
open ".github/workflows/build.yml"
open "README.md"
apt-get update && apt-get install -y gcc g++ cmake make libssl-dev libyaml-dev flex bison
gcc --version && g++ --version && cmake --version && make --version && flex --version && bison --version
apt-get update && apt-get install -y build-essential cmake make libssl-dev libyaml-dev flex bison
gcc --version && g++ --version && cmake --version && make --version && flex --version && bison --version
rake all test
apt-get install -y rake
rake all test
