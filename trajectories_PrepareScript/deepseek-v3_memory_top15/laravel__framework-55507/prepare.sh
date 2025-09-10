ls -la
ls -la .github/workflows
open ".github/workflows/tests.yml"
open "composer.json"
open "phpunit.xml.dist"
apt-get update && apt-get install -y liblz4-dev liblzf-dev libzstd-dev libssl-dev libpcre2-dev
apt-get install -y php8.2-dom php8.2-curl php8.2-libxml php8.2-mbstring php8.2-zip php8.2-pcntl php8.2-pdo php8.2-sqlite3 php8.2-gd php8.2-redis php8.2-igbinary php8.2-msgpack php8.2-memcached php8.2-gmp php8.2-fileinfo php8.2-ftp php8.2-intl
add-apt-repository ppa:ondrej/php -y && apt-get update
apt-get install -y software-properties-common
add-apt-repository ppa:ondrej/php -y && apt-get update
apt-get install -y php8.2-dom php8.2-curl php8.2-libxml php8.2-mbstring php8.2-zip php8.2-pcntl php8.2-pdo php8.2-sqlite3 php8.2-gd php8.2-redis php8.2-igbinary php8.2-msgpack php8.2-memcached php8.2-gmp php8.2-fileinfo php8.2-ftp php8.2-intl
php -m
apt-get install -y php8.2
php -m
apt-get install -y php8.2-sqlite3 php8.2-gd php8.2-redis php8.2-igbinary php8.2-msgpack php8.2-memcached php8.2-gmp
php -m
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
apt-get install -y curl
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
composer update --prefer-dist --no-interaction --no-progress
php --ini
ln -s /etc/php/8.2/mods-available/dom.ini /etc/php/8.2/cli/conf.d/20-dom.ini
php -m | grep dom
composer update --prefer-dist --no-interaction --no-progress
cat /etc/php/8.2/cli/conf.d/20-dom.ini
echo 'extension=dom.so' > /etc/php/8.2/cli/conf.d/20-dom.ini
cat /etc/php/8.2/cli/conf.d/20-dom.ini
service php8.2-fpm restart
php -m | grep dom
apt-get install --reinstall php8.2-xml
apt-get install -y php8.2-xml
php -m | grep dom
composer update --prefer-dist --no-interaction --no-progress
php -m | grep curl
ln -s /etc/php/8.2/mods-available/curl.ini /etc/php/8.2/cli/conf.d/20-curl.ini
php -m | grep curl
cat /etc/php/8.2/cli/conf.d/20-curl.ini
echo 'extension=curl.so' > /etc/php/8.2/cli/conf.d/20-curl.ini
cat /etc/php/8.2/cli/conf.d/20-curl.ini
php -m | grep curl
apt-get install --reinstall php8.2-curl
php -m | grep curl
composer update --prefer-dist --no-interaction --no-progress
apt-get install -y php8.2-zip unzip
php -m | grep zip
composer update --prefer-dist --no-interaction --no-progress
vendor/bin/phpunit
php -m | grep mbstring
ln -s /etc/php/8.2/mods-available/mbstring.ini /etc/php/8.2/cli/conf.d/20-mbstring.ini

