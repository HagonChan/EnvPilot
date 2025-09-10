ls -la
ls -la .github/workflows
open ".github/workflows/tests.yml"
apt-get update && apt-get install -y liblz4-dev liblzf-dev libzstd-dev
apt-get install -y php8.2 php8.2-dom php8.2-curl php8.2-libxml php8.2-mbstring php8.2-zip php8.2-pcntl php8.2-pdo php8.2-sqlite3 php8.2-pdo-sqlite php8.2-gd php8.2-redis php8.2-igbinary php8.2-msgpack php8.2-memcached php8.2-gmp php8.2-fileinfo php8.2-ftp php8.2-intl
apt-get install -y software-properties-common && add-apt-repository ppa:ondrej/php -y && apt-get update
apt-get install -y php8.2 php8.2-dom php8.2-curl php8.2-libxml php8.2-mbstring php8.2-zip php8.2-pcntl php8.2-pdo php8.2-sqlite3 php8.2-pdo-sqlite php8.2-gd php8.2-redis php8.2-igbinary php8.2-msgpack php8.2-memcached php8.2-gmp php8.2-fileinfo php8.2-ftp php8.2-intl
php -m
update-alternatives --list php
export PATH=/usr/bin/php8.2:$PATH
php -m
which php8.2
find / -name php8.2 2>/dev/null
apt-get install -y php8.2
php8.2 -m
apt-get install -y php8.2-redis php8.2-igbinary php8.2-msgpack php8.2-memcached php8.2-gmp
php8.2 -m
composer update --prefer-dist --no-interaction --no-progress
apt-get install -y composer
composer update --prefer-dist --no-interaction --no-progress
php8.2 -m
apt-get install -y php8.2-dom
php8.2 -m | grep dom
composer update --prefer-dist --no-interaction --no-progress
apt-get install -y php8.2-curl
php8.2 -m | grep curl
composer update --prefer-dist --no-interaction --no-progress
vendor/bin/phpunit
php8.2 -m | grep mbstring
apt-get install -y php8.2-mbstring
php8.2 -m | grep mbstring
vendor/bin/phpunit
apt-get install -y php8.2-mysql
php8.2 -m | grep pdo_mysql
vendor/bin/phpunit
apt-get install -y php8.2-sqlite3
php8.2 -m | grep pdo_sqlite
vendor/bin/phpunit
apt-get install -y php8.2-gd
php8.2 -m | grep gd
vendor/bin/phpunit
apt-get install -y php8.2-intl
php8.2 -m | grep intl
vendor/bin/phpunit
chmod -R 777 tests
vendor/bin/phpunit
