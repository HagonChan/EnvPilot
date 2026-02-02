ls -la
open ".travis.yml"
open "README.md"
open "INSTALL"
apt-get install gcc make python3 python3-dev python3-setuptools autoconf
apt-get install gcc -y
apt-get install make -y
apt-get install python3 python3-dev python3-setuptools -y
apt-get install autoconf -y
./autogen.sh
./configure
apt-get install pkg-config -y
./configure
apt-get install libpopt-dev -y
./configure
make
make check
make check
mkdir -p /testbed/_testtmp/CompileHello_Case && chmod -R 777 /testbed/_testtmp
make check
open "test/testdistcc.py"
search_file CompileHello_Case test/testdistcc.py
goto 970
ls -ld /testbed/_testtmp
useradd distcc
make check
chown -R distcc:distcc /testbed/_testtmp
make check
cd test && python3 testdistcc.py CompileHello_Case
ls -la /testbed/src/distccd
cd /testbed && make
ls -la /testbed/src/
open "Makefile"
cd /testbed && make install-programs
which distccd
cd /testbed && make check
chown -R 1000:1000 /testbed/_testtmp/CompileHello_Case
cd /testbed && make check
cd /testbed && sudo -E python3 test/testdistcc.py CompileHello_Case
cd /testbed && make check
search_file CompileHello_Case test/testdistcc.py
search_file Compilation_Case test/testdistcc.py
search_file WithDaemon_Case test/testdistcc.py
goto 306
open "test/testdistcc.py"
edit 'self.daemon_logfile = os.path.join(os.getcwd(), "distccd.log")' 'self.daemon_logfile = os.path.join('"'"'/tmp'"'"', "distccd.log")' False
cd /testbed && make check
cd /testbed && python3 test/testdistcc.py CompileHello_Case
cd /testbed && cat test/testtmp.c

