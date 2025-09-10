ls -la
ls -la .github/workflows
open ".github/workflows/main.yml"
apt-get update && apt-get install -y php7.4 php7.4-cli php7.4-xml composer
apt-get install -y software-properties-common && add-apt-repository -y ppa:ondrej/php && apt-get update && apt-get install -y php7.4 php7.4-cli php7.4-xml composer
composer update --no-progress --prefer-dist
apt-get remove -y composer && curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
apt-get update && apt-get install -y curl
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
composer --version
ls -la /usr/local/bin/composer
export PATH=$PATH:/usr/local/bin && composer --version
composer update --no-progress --prefer-dist
composer config -g disable-tls true && composer update --no-progress --prefer-dist
apt-get install -y php7.4-curl
composer config -g disable-tls false && composer update --no-progress --prefer-dist
apt-get install -y php7.4-mbstring
composer update --no-progress --prefer-dist
php vendor/bin/phpunit
