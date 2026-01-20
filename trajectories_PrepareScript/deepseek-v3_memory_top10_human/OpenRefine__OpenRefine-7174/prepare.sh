ls -la
ls -la .github/workflows
open ".github/workflows/pull_request_server.yml"
open "README.md"
apt-get update && apt-get install -y gcc g++ cmake make libssl-dev libyaml-dev build-essential
apt-get install -y openjdk-11-jdk
apt-get install -y maven
curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs
apt-get remove -y nodejs
apt-get install -y curl
curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs
apt-get remove -y libnode72
apt-get install -y nodejs
gcc --version && g++ --version && cmake --version && make --version && node --version && npm --version && java -version && mvn --version
ls -la | grep -E 'Makefile|CMakeLists.txt'
open "README.md"
ls -la refine
open "refine"
./refine build
./refine test
