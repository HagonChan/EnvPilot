ls -la
ls -la .github/workflows
open ".github/workflows/main.yml"
apt-get update && apt-get install -y php composer
apt-get install -y php composer
php --version && composer --version
COMPOSER_ROOT_VERSION=dev-master composer update --no-progress --prefer-dist
apt-get install -y php-curl
COMPOSER_ROOT_VERSION=dev-master composer update --no-progress --prefer-dist
curl -v https://repo.packagist.org/packages.json
apt-get install -y curl
curl -v https://repo.packagist.org/packages.json
composer config -g repo.packagist composer https://mirrors.aliyun.com/composer/
COMPOSER_ROOT_VERSION=dev-master composer update --no-progress --prefer-dist
apt-get install -y php-xml
COMPOSER_ROOT_VERSION=dev-master composer update --no-progress --prefer-dist
php vendor/bin/phpunit
