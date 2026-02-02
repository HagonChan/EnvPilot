ls -la
ls -la .github
ls -la .github/workflows
open ".github/workflows/continuous-integration.yml"
open "composer.json"
open "README.md"
apt-get update && apt-get install -y php git unzip gzip tar unrar xz mercurial fossil perforce subversion
apt-get update && apt-get install -y php git unzip gzip tar unrar mercurial fossil subversion
php -v
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
apt-get install -y curl
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
composer --version
composer install --ansi --no-interaction --no-progress --prefer-dist
apt-get install -y php8.1-xml
composer install --ansi --no-interaction --no-progress --prefer-dist
composer test
COMPOSER_PROCESS_TIMEOUT=600 composer test
apt-get install -y php8.1-mbstring
COMPOSER_PROCESS_TIMEOUT=600 composer test
php -m | grep mbstring
find vendor -name phpunit
vendor/bin/.phpunit/phpunit-9.6-0/phpunit
composer install --ansi --no-interaction --no-progress --prefer-dist
composer test
rm -rf vendor/bin/.phpunit && composer test
vendor/bin/phpunit
find vendor -name phpunit
vendor/bin/.phpunit/phpunit-9.6-0/vendor/phpunit
find vendor/bin/.phpunit/phpunit-9.6-0/vendor/phpunit -name phpunit
vendor/bin/simple-phpunit
