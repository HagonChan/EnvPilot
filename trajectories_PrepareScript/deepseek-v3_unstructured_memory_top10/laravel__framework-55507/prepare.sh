ls -la
ls -la .github/workflows
open ".github/workflows/tests.yml"
apt-get update && apt-get install -y liblz4-dev liblzf-dev libzstd-dev
apt-get install -y php8.2-dom php8.2-curl php8.2-libxml php8.2-mbstring php8.2-zip php8.2-pcntl php8.2-pdo php8.2-sqlite3 php8.2-gd php8.2-redis php8.2-igbinary php8.2-msgpack php8.2-memcached php8.2-gmp php8.2-fileinfo php8.2-ftp php8.2-intl
php -v
apt-get install -y php8.2 php8.2-common
apt-get install -y software-properties-common && add-apt-repository ppa:ondrej/php -y && apt-get update
apt-get install -y php8.2 php8.2-common
apt-get install -y php8.2-dom php8.2-curl php8.2-libxml php8.2-mbstring php8.2-zip php8.2-pcntl php8.2-pdo php8.2-sqlite3 php8.2-gd php8.2-redis php8.2-igbinary php8.2-msgpack php8.2-memcached php8.2-gmp php8.2-fileinfo php8.2-ftp php8.2-intl
apt-get install -y php8.2-xml php8.2-curl php8.2-mbstring php8.2-zip php8.2-sqlite3 php8.2-gd php8.2-redis php8.2-igbinary php8.2-msgpack php8.2-memcached php8.2-gmp php8.2-intl
php -v
php -m
composer update --prefer-dist --no-interaction --no-progress
apt-get install -y composer
composer update --prefer-dist --no-interaction --no-progress
./vendor/bin/phpunit
apt-get install -y php8.2-mysql
service php8.2-fpm restart && ./vendor/bin/phpunit
./vendor/bin/phpunit
