ls
open "README.md"
apt-get update && apt-get install -y build-essential tcl8.6 tclx libc6-dev-i386 gcc-multilib g++-multilib gnupg2 gcc-4.8 g++-4.8 libssl-dev libsystemd-dev tcl-tls
apt-get install -y build-essential tcl8.6 tclx libc6-dev-i386 gcc-multilib g++-multilib gnupg2 gcc-4.8 g++-4.8 libssl-dev libsystemd-dev tcl-tls
apt-get install -y build-essential tcl8.6 tclx libc6-dev-i386 gcc-multilib g++-multilib gnupg2 libssl-dev libsystemd-dev tcl-tls
make
make test
src/redis-server --version
