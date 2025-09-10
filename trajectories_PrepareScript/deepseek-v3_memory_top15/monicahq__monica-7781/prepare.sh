ls -la
ls -la .github/workflows
open ".github/workflows/tests.yml"
open "composer.json"
open "phpunit.xml"
open "README.md"
apt-get update && apt-get install -y php php-mysql php-pgsql sqlite nodejs npm
apt-get install -y php php-mysql php-pgsql sqlite nodejs npm
composer install
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
apt-get install -y curl
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
composer install
apt-get install -y php8.3 php8.3-mysql php8.3-pgsql php8.3-sqlite3 php8.3-intl php8.3-curl php8.3-bcmath php8.3-dom php8.3-xml
apt-get install -y software-properties-common && add-apt-repository ppa:ondrej/php -y && apt-get update
apt-get install -y php8.3 php8.3-mysql php8.3-pgsql php8.3-sqlite3 php8.3-intl php8.3-curl php8.3-bcmath php8.3-dom php8.3-xml
update-alternatives --set php /usr/bin/php8.3
php -v && php -m
composer install
apt-get install -y zip unzip
apt-get clean
apt-get install -y zip unzip
df -h
du -sh * | sort -rh | head -10
find /var/log -type f -exec du -h {} + | sort -rh | head -10
find /var/cache -type f -exec du -h {} + | sort -rh | head -10
apt-get clean
find /tmp -type f -exec du -h {} + | sort -rh | head -10
composer install --no-dev
php artisan test
