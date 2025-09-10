ls -la
ls -la .github/workflows
open ".github/workflows/continuous-integration.yml"
open "composer.json"
open "phpunit.xml.dist"
apt-get update && apt-get install -y git unzip gzip tar xz-utils
apt-get install -y php php-intl php-zip
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" && php composer-setup.php && php -r "unlink('composer-setup.php');"
mv composer.phar /usr/local/bin/composer && chmod +x /usr/local/bin/composer
php -v && composer --version
composer install
apt-get install -y php-xml
composer install
composer test

