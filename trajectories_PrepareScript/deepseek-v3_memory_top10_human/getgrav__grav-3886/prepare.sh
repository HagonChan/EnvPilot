ls -la
ls -la .github/workflows
open ".github/workflows/tests.yaml"
open "composer.json"
php -v
apt-get update && apt-get install -y php7.4 php7.4-opcache php7.4-gd php7.4-json php7.4-openssl php7.4-curl php7.4-zip php7.4-dom php7.4-xml
apt-cache search php | grep ^php8.1
apt-get install -y php8.1 php8.1-opcache php8.1-gd php8.1-json php8.1-openssl php8.1-curl php8.1-zip php8.1-dom php8.1-xml
apt-get install -y php8.1 php8.1-opcache php8.1-gd php8.1-curl php8.1-zip php8.1-xml
php -v
php -m
composer --version
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" && php composer-setup.php --install-dir=/usr/local/bin --filename=composer && php -r "unlink('composer-setup.php');"
composer --version
composer install --prefer-dist --no-progress
vendor/bin/codecept run
apt-get install -y php8.1-mbstring
php -m | grep mbstring
vendor/bin/codecept run
