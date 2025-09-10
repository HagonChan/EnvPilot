ls -la
ls -la .github/workflows
open ".github/workflows/main.yml"
apt-get update && apt-get install -y php7.4 php7.4-cli php7.4-xml composer
apt-get install -y software-properties-common && add-apt-repository ppa:ondrej/php -y && apt-get update && apt-get install -y php7.4 php7.4-cli php7.4-xml composer
COMPOSER_ROOT_VERSION=dev-master composer update --no-progress --prefer-dist
apt-get remove -y composer && curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer --version=2.2.18
apt-get install -y curl && curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer --version=2.2.18
COMPOSER_ROOT_VERSION=dev-master composer update --no-progress --prefer-dist
ls -la /usr/local/bin/composer && export PATH=/usr/local/bin:$PATH && composer --version
COMPOSER_ROOT_VERSION=dev-master composer update --no-progress --prefer-dist
apt-get install -y php7.4-mbstring && COMPOSER_ROOT_VERSION=dev-master composer update --no-progress --prefer-dist
php vendor/bin/phpunit
