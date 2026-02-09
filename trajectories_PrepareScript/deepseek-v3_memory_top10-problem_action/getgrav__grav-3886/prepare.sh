ls -la
ls -la .github
ls -la .github/workflows
open ".github/workflows/tests.yaml"
php -v
apt-get update && apt-get install -y php7.4 php7.4-opcache php7.4-gd
apt-get install -y software-properties-common && add-apt-repository ppa:ondrej/php -y && apt-get update
apt-get install -y php7.4 php7.4-opcache php7.4-gd
php -v
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
apt-get install -y curl
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
composer --version
composer install --prefer-dist --no-progress
apt-get install -y php7.4-curl php7.4-zip php7.4-xml
composer install --prefer-dist --no-progress
vendor/bin/codecept run
apt-get install -y php7.4-mbstring
vendor/bin/codecept run
open "tests/unit/Grav/Common/AssetsTest.php"
goto 620
