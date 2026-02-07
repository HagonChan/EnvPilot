ls
open "README.md"
apt-get update && apt-get install -y build-essential tcl8.6 tclx libc6-dev-i386 gcc-multilib g++-multilib gnupg2 gcc-4.8 g++-4.8 libssl-dev libsystemd-dev tcl-tls
make
apt-get install -y build-essential
make
make test
tclsh
apt-get install -y tcl8.6
which tclsh
dpkg -L tcl8.6 | grep bin
ln -s /usr/bin/tclsh8.6 /usr/bin/tclsh
which tclsh
make test
