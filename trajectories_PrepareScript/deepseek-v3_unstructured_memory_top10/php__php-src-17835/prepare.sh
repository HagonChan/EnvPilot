ls -la
ls -la .github/workflows
open ".github/workflows/push.yml"
open ".github/actions/apt-x64/action.yml"
apt-get update -y && apt-get install -y autoconf gcc make curl unzip bison re2c locales ldap-utils openssl slapd language-pack-de libgmp-dev libicu-dev libtidy-dev libenchant-2-dev libbz2-dev libsasl2-dev libxpm-dev libzip-dev libsqlite3-dev libsqlite3-mod-spatialite libwebp-dev libonig-dev libcurl4-openssl-dev libxml2-dev libxslt1-dev libpq-dev libedit-dev libldap2-dev libsodium-dev libargon2-dev libmm-dev libsnmp-dev postgresql postgresql-contrib snmpd snmp-mibs-downloader freetds-dev unixodbc-dev llvm clang dovecot-core dovecot-pop3d dovecot-imapd sendmail firebird-dev liblmdb-dev libtokyocabinet-dev libdb-dev libqdbm-dev libjpeg-dev libpng-dev libfreetype6-dev
./buildconf
./configure
make
make test
