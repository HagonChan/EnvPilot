ls -la
ls -la .github
ls -la .github/workflows
open ".github/workflows/continuous-integration.yml"
php -v
apt-get update && apt-get install -y php8.3 php8.3-sqlite3 php8.3-pdo-sqlite
apt-get install -y software-properties-common && add-apt-repository ppa:ondrej/php -y && apt-get update && apt-get install -y php8.3 php8.3-sqlite3 php8.3-pdo-sqlite
php -v
composer --version
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" && php composer-setup.php && php -r "unlink('composer-setup.php');" && mv composer.phar /usr/local/bin/composer
composer --version
composer install
apt-get install -y php8.3-xml php8.3-dom
composer install
apt-get install -y zip unzip
composer install
vendor/bin/phpunit
apt-get install -y php8.3-mbstring
php -m
vendor/bin/phpunit
