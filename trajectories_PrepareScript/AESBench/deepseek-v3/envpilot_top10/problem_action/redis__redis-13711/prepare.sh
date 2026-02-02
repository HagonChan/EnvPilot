find_file '.github/workflows/*.yml'
find_file .gitlab-ci.yml
find_file .circleci/config.yml
find_file Jenkinsfile
find_file Makefile
open "/testbed/Makefile"
open "/testbed/src/Makefile"
find_file README.md
open "/testbed/README.md"
apt-get update && apt-get install -y build-essential tcl8.6 tclx libc6-dev-i386 gcc-multilib g++-multilib gnupg2 gcc-4.8 g++-4.8 libssl-dev libsystemd-dev tcl-tls
make
apt-get install -y build-essential
make
make test
apt-get install -y tcl
make test
