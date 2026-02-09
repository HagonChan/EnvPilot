
ls -R
open "README.md"
open "INSTALL"
apt-get update
apt-get install -y gcc make libssl-dev zlib1g-dev libcurl4-openssl-dev libexpat1-dev gettext libpcre2-dev tcl tk perl python3
make
make install
open "Makefile"
goto 100
goto 3000
make test
