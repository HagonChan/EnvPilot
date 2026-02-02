ls -la
ls -la .github
ls -la .github/workflows
open ".github/workflows/tests.yml"
open "composer.json"
open "phpunit.xml.dist"
apt-get update && apt-get install -y tzdata locales
php -v
apt-get install -y php8.1
apt-get update && apt-get install -y --fix-missing php8.1
php -v
apt-get install -y composer
composer --version
composer install --prefer-dist --no-progress
apt-get install -y php8.1-curl
composer install --prefer-dist --no-progress
apt-get install -y php8.1-xml php8.1-simplexml php8.1-dom
composer install --prefer-dist --no-progress
./vendor/bin/phpunit
composer update
./vendor/bin/phpunit --verbose
./vendor/bin/phpunit --debug
composer require --dev phpstan/phpstan --with-all-dependencies
./vendor/bin/phpunit
timedatectl set-timezone UTC
export TZ=UTC && ./vendor/bin/phpunit
export TZ=America/Toronto && ./vendor/bin/phpunit
composer require --dev phpstan/phpstan:1.12.32 --with-all-dependencies
./vendor/bin/phpunit
composer show nikic/php-parser
composer require nikic/php-parser:4.10.5 --with-all-dependencies
composer show phpstan/phpstan --all | grep -i 'nikic/php-parser'
composer require --dev phpstan/phpstan:^1.12.32 --with-all-dependencies
composer remove --dev ondrejmirtes/better-reflection phpunit/php-code-coverage phpunit/phpunit
composer require nikic/php-parser:4.10.5 --with-all-dependencies
composer require --dev phpstan/phpstan:1.12.32 --with-all-dependencies
composer require --dev ondrejmirtes/better-reflection phpunit/php-code-coverage phpunit/phpunit --with-all-dependencies
composer show ondrejmirtes/better-reflection --all
composer require --dev ondrejmirtes/better-reflection:3.5.6 --with-all-dependencies
composer show ondrejmirtes/better-reflection --all | grep -i 'php'
composer show phpstan/phpstan --all | grep -i 'nikic/php-parser'
composer require --dev phpstan/phpstan:^1.12.32 --with-all-dependencies
composer require --dev phpstan/phpstan:^1.12.32 --with-all-dependencies --ignore-platform-reqs
composer remove --dev phpstan/phpstan
composer why phpstan/phpstan
composer remove --dev phpstan/extension-installer
composer require --dev phpstan/phpstan:1.12.32 --with-all-dependencies
composer require --dev ondrejmirtes/better-reflection phpunit/php-code-coverage phpunit/phpunit --with-all-dependencies
composer show ondrejmirtes/better-reflection --all | grep -i 'nikic/php-parser'

