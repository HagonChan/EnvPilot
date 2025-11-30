ls -la
ls -la .github
ls -la .github/workflows
open ".github/workflows/build.yml"
apt-get update
apt-get install -y gcc g++ clang ruby rake
rake -m test:run:serial
