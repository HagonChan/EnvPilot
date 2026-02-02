ls
open "README.md"
open "INSTALL"
open "Makefile"
apt-get update && apt-get install -y gcc make libssl-dev zlib1g-dev libcurl4-openssl-dev libexpat1-dev gettext libpcre2-dev libc6-dev
apt-get install -y gcc make libssl-dev zlib1g-dev libcurl4-openssl-dev libexpat1-dev gettext libpcre2-dev libc6-dev
make
make test
make install
