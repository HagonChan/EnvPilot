ls -la
ls -la .github
ls -la .github/workflows
open ".github/workflows/tests.yaml"
apt-get update && apt-get install -y git zip php-opcache php-gd
php -v
apt-get install -y php7.3
apt-get install -y software-properties-common && add-apt-repository ppa:ondrej/php -y && apt-get update && apt-get install -y php7.3
php -v
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" && php composer-setup.php && php -r "unlink('composer-setup.php');" && mv composer.phar /usr/local/bin/composer
composer --version
composer install --prefer-dist --no-progress
apt-get install -y php7.3-curl php7.3-zip php7.3-xml
composer install --prefer-dist --no-progress
php -m | grep gd
ls -la /etc/php/7.3/cli/conf.d/
ls -la /etc/php/7.3/mods-available/
apt-get install -y php7.3-gd
php -m | grep gd
composer install --prefer-dist --no-progress
vendor/bin/codecept run
apt-get install -y php7.3-mbstring
php -m | grep mbstring
vendor/bin/codecept run
