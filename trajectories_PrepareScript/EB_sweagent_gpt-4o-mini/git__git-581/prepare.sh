
find_file '*.yml'
open "/testbed/.travis.yml"
find_file install-dependencies.sh ci
open "/testbed/ci/install-dependencies.sh"
apt-add-repository -y "ppa:ubuntu-toolchain-r/test" && apt-get -q update && apt-get -q -y install language-pack-is git-svn apache2 gcc-8
apt-get -q update
apt-get -q -y install software-properties-common
apt-add-repository -y "ppa:ubuntu-toolchain-r/test" && apt-get -q update && apt-get -q -y install language-pack-is git-svn apache2 gcc-8
apt-get -q -y install language-pack-is git-svn apache2
apt-get -q -y install gcc
apt-get -q -y install git-lfs
apt-get -q -y install perforce
find_file run-build-and-tests.sh ci
open "/testbed/ci/run-build-and-tests.sh"
find_file Makefile
make --jobs=2
apt-get -q -y install build-essential
make --jobs=2
apt-get -q -y install libssl-dev
make --jobs=2
apt-get -q -y install zlib1g-dev
make --jobs=2
apt-get -q -y install libcurl4-openssl-dev
make --jobs=2
apt-get -q -y install libexpat1-dev
make --jobs=2
apt-get -q -y install gettext
make --jobs=2
make test
