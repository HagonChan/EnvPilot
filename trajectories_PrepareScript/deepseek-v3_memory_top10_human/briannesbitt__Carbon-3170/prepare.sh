ls -la
ls -la .github/workflows
open ".github/workflows/tests.yml"
open "composer.json"
apt-get update && apt-get install -y build-essential cmake libssl-dev libyaml-dev g++
composer install
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
apt-get install -y curl php-cli
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
composer install
apt-get install -y php8.1-xml php8.1-simplexml php8.1-dom
composer install
open "README.md"
ls -la
open "readme.md"
open "phpunit.xml.dist"
./vendor/bin/phpunit
apt-get install -y php8.1-mbstring
./vendor/bin/phpunit
edit '<testsuite name="phpstan">
      <directory>tests/PHPStan</directory>
    </testsuite>' '<!-- <testsuite name="phpstan">
      <directory>tests/PHPStan</directory>
    </testsuite> -->' True
./vendor/bin/phpunit --exclude-testsuite phpstan
