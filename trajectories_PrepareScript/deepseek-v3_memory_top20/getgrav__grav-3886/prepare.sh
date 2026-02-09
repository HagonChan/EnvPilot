ls -la
ls -la .github/workflows
open ".github/workflows/tests.yaml"
open "composer.json"
open "README.md"
open "codeception.yml"
php -v
apt-get update
apt-get install -y php7.4 php7.4-json php7.4-openssl php7.4-curl php7.4-zip php7.4-dom php7.4-libxml php7.4-gd
apt-get install -y software-properties-common && add-apt-repository ppa:ondrej/php -y && apt-get update
apt-get install -y php7.4 php7.4-json php7.4-openssl php7.4-curl php7.4-zip php7.4-dom php7.4-libxml php7.4-gd
php -v
dpkg -l | grep php7.4
apt-get install -y php7.4 php7.4-cli php7.4-common php7.4-json php7.4-opcache php7.4-mysql php7.4-zip php7.4-gd php7.4-mbstring php7.4-curl php7.4-xml php7.4-bcmath
php -v
php -m
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
apt-get install -y curl
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
composer --version
composer install --prefer-dist --no-progress
vendor/bin/codecept run
