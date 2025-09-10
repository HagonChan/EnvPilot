ls -la
ls -la .github/workflows
open ".github/workflows/continuous-integration.yml"
open "composer.json"
apt-get update && apt-get install -y 7z unzip gzip tar unrar xz git mercurial fossil p4 subversion
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" && php composer-setup.php && php -r "unlink('composer-setup.php');" && mv composer.phar /usr/local/bin/composer
apt-get install -y php7.4 php7.4-intl php7.4-zip php7.4-xml
apt-get install -y php7.4
apt-cache search php7.4
apt-get install -y php8.1 php8.1-intl php8.1-zip php8.1-xml
php -v && php -m
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" && php composer-setup.php && php -r "unlink('composer-setup.php');" && mv composer.phar /usr/local/bin/composer
composer --version
composer install
composer test
COMPOSER_PROCESS_TIMEOUT=600 composer test
apt-get install -y php8.1-mbstring
php -m | grep mbstring
COMPOSER_PROCESS_TIMEOUT=600 composer test
php vendor/bin/phpunit
composer install --dev
ls -la vendor/bin
php vendor/bin/simple-phpunit
composer global require phpunit/phpunit
phpunit
find /root/.composer -name phpunit
/root/.composer/vendor/bin/phpunit
apt-get install -y php8.1-curl
php -m | grep curl
/root/.composer/vendor/bin/phpunit
