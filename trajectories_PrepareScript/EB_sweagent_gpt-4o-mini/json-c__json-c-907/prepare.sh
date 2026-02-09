
find . -name '*.yml' -o -name '*.yaml' -o -name '*.gitlab-ci.yml' -o -name '*.circleci/config.yml' -o -name 'azure-pipelines.yml' -o -name 'Jenkinsfile'
open ".travis.yml"
goto 147
apt-get update && apt-get install -y valgrind cppcheck doxygen cmake
mkdir -p build && cd build && cmake ..
make
make test
