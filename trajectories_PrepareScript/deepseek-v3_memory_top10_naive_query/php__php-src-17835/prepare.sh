ls -la
ls -la .github/workflows
open ".github/workflows/push.yml"
open ".github/actions/apt-x64/action.yml"
apt-get update && apt-get install -y autoconf gcc make curl unzip bison re2c locales ldap-utils openssl slapd language-pack-de libgmp-dev libicu-dev libtidy-dev libenchant-2-dev libbz2-dev libsasl2-dev libxpm-dev libzip-dev libsqlite3-dev libsqlite3-mod-spatialite libwebp-dev libonig-dev libcurl4-openssl-dev libxml2-dev libxslt1-dev libpq-dev libedit-dev libldap2-dev libsodium-dev libargon2-dev libmm-dev libsnmp-dev postgresql postgresql-contrib snmpd snmp-mibs-downloader freetds-dev unixodbc-dev llvm clang dovecot-core dovecot-pop3d dovecot-imapd sendmail firebird-dev liblmdb-dev libtokyocabinet-dev libdb-dev libqdbm-dev libjpeg-dev libpng-dev libfreetype6-dev
./buildconf
./configure --enable-mbstring --with-openssl --with-zlib --with-bz2 --with-curl --with-gd --with-gettext --with-gmp --with-mysqli --with-pdo-mysql --with-pdo-pgsql --with-pgsql --with-xsl --with-zip --with-sodium --with-libxml --with-sqlite3 --enable-intl --enable-soap --enable-sockets --enable-pcntl --enable-ftp --enable-calendar --enable-exif --enable-sysvmsg --enable-sysvsem --enable-sysvshm --enable-wddx --with-pear
make
make test
open "Makefile"
search_file test Makefile
search_file 'test.*ext' Makefile
$(PHP_EXECUTABLE) -n -c $(top_builddir)/tmp-php.ini $(top_srcdir)/run-tests.php -n -c $(top_builddir)/tmp-php.ini -d extension_dir=$(top_builddir)/modules/ $(PHP_TEST_SHARED_EXTENSIONS) ext/standard
find . -name run-tests.php
find . -name php
./sapi/cli/php -n -c ./tmp-php.ini ./run-tests.php -n -c ./tmp-php.ini -d extension_dir=./modules/ ext/standard
