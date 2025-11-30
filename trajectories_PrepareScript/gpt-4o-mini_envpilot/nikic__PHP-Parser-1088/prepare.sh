ls -la
ls -la .github
ls -la .github/workflows
open ".github/workflows/main.yml"
apt-get update && apt-get install -y php7.4 php7.4-cli php7.4-xml php7.4-mbstring composer
apt-get update && apt-get install -y php php-xml php-mbstring
apt-get install -y composer
composer require php-coveralls/php-coveralls:^2.2 --dev --no-update && COMPOSER_ROOT_VERSION=dev-master composer update --no-progress --prefer-dist
php vendor/bin/phpunit --coverage-clover build/logs/clover.xml
