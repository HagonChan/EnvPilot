ls -la
ls -la .github/workflows
open ".github/workflows/push.yml"
goto 200
goto 300
open "run-tests.php"
sudo apt-get update && sudo apt-get install -y bison libgmp-dev libonig-dev libsqlite3-dev openssl re2c valgrind
apt-get update && apt-get install -y bison libgmp-dev libonig-dev libsqlite3-dev openssl re2c valgrind
./buildconf --force
apt-get install -y autoconf
./buildconf --force
./configure --disable-debug --enable-mbstring --enable-opcache --enable-option-checking=fatal --enable-sockets --enable-werror --prefix=/usr --with-config-file-scan-dir=/etc/php.d --with-gmp --with-mysqli=mysqlnd --with-openssl --with-pdo-sqlite --with-valgrind
apt-get install -y gcc
./configure --disable-debug --enable-mbstring --enable-opcache --enable-option-checking=fatal --enable-sockets --enable-werror --prefix=/usr --with-config-file-scan-dir=/etc/php.d --with-gmp --with-mysqli=mysqlnd --with-openssl --with-pdo-sqlite --with-valgrind
apt-get install -y pkg-config
./configure --disable-debug --enable-mbstring --enable-opcache --enable-option-checking=fatal --enable-sockets --enable-werror --prefix=/usr --with-config-file-scan-dir=/etc/php.d --with-gmp --with-mysqli=mysqlnd --with-openssl --with-pdo-sqlite --with-valgrind
apt-get install -y libxml2-dev
./configure --disable-debug --enable-mbstring --enable-opcache --enable-option-checking=fatal --enable-sockets --enable-werror --prefix=/usr --with-config-file-scan-dir=/etc/php.d --with-gmp --with-mysqli=mysqlnd --with-openssl --with-pdo-sqlite --with-valgrind
apt-get install -y libssl-dev
./configure --disable-debug --enable-mbstring --enable-opcache --enable-option-checking=fatal --enable-sockets --enable-werror --prefix=/usr --with-config-file-scan-dir=/etc/php.d --with-gmp --with-mysqli=mysqlnd --with-openssl --with-pdo-sqlite --with-valgrind
apt-get install -y zlib1g-dev
./configure --disable-debug --enable-mbstring --enable-opcache --enable-option-checking=fatal --enable-sockets --enable-werror --prefix=/usr --with-config-file-scan-dir=/etc/php.d --with-gmp --with-mysqli=mysqlnd --with-openssl --with-pdo-sqlite --with-valgrind
make -j$(nproc)
apt-get install -y make
make -j$(nproc)
make install
php run-tests.php
php run-tests.php tests/basic/001.phpt
