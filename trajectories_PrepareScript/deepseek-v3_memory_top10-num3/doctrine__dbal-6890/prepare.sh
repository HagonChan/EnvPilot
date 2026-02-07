ls -la
ls -la .github/workflows
open ".github/workflows/continuous-integration.yml"
open "composer.json"
apt-get update && apt-get install -y php php-cli php-pdo php-xml php-mbstring php-json php-sqlite3 php-mysql php-pgsql
composer install
apt-get install -y composer
composer install
add-apt-repository ppa:ondrej/php -y && apt-get update && apt-get install -y php8.3 php8.3-cli php8.3-pdo php8.3-xml php8.3-mbstring php8.3-json php8.3-sqlite3 php8.3-mysql php8.3-pgsql
apt-get install -y software-properties-common
add-apt-repository ppa:ondrej/php -y && apt-get update && apt-get install -y php8.3 php8.3-cli php8.3-pdo php8.3-xml php8.3-mbstring php8.3-json php8.3-sqlite3 php8.3-mysql php8.3-pgsql
apt-get install -y php8.3 php8.3-cli php8.3-pdo php8.3-xml php8.3-mbstring php8.3-sqlite3 php8.3-mysql php8.3-pgsql
php -v
update-alternatives --set php /usr/bin/php8.3
php -v
composer install
apt-get install -y php8.3-curl
composer install
apt-get install -y php8.3-intl
composer install
phpunit
./vendor/bin/phpunit
