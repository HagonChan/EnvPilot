ls -la
ls -la .github/workflows
open ".github/workflows/main.yml"
apt-get update && apt-get install -y php7.4 composer
COMPOSER_ROOT_VERSION=dev-master composer update --no-progress --prefer-dist
apt-get install -y php-curl && phpenmod curl
COMPOSER_ROOT_VERSION=dev-master composer update --no-progress --prefer-dist
update-alternatives --set php /usr/bin/php7.4 && apt-get install -y php7.4-xml
apt-get install -y php7.4-xml && export PATH=/usr/bin/php7.4:$PATH
apt-get install -y software-properties-common && add-apt-repository ppa:ondrej/php -y && apt-get update && apt-get install -y php7.4-xml
COMPOSER_ROOT_VERSION=dev-master composer update --no-progress --prefer-dist
ls /usr/bin/php*
apt list --installed | grep php7.4
export PATH=/usr/bin/php7.4:$PATH && COMPOSER_ROOT_VERSION=dev-master composer update --no-progress --prefer-dist
php -v
update-alternatives --set php /usr/bin/php7.4
export PATH=/usr/bin/php7.4:$PATH && php -v
which php7.4
apt-get install --reinstall php7.4
which php7.4
find / -name php7.4 2>/dev/null
apt-get install --reinstall php7.4 php7.4-cli
apt-get remove --purge php7.4* && apt-get install -y php7.4 php7.4-cli php7.4-xml
phpenmod dom && COMPOSER_ROOT_VERSION=dev-master composer update --no-progress --prefer-dist
COMPOSER_ROOT_VERSION=dev-master composer update --no-progress --prefer-dist --ignore-platform-req=ext-dom --ignore-platform-req=php
apt-get install -y php8.1-xml
COMPOSER_ROOT_VERSION=dev-master composer update --no-progress --prefer-dist --ignore-platform-req=ext-dom --ignore-platform-req=php
./vendor/bin/phpunit
