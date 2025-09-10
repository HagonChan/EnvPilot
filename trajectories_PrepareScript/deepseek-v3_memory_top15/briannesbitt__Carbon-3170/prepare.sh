ls -la
ls -la .github/workflows
open ".github/workflows/tests.yml"
open "composer.json"
open "phpunit.xml.dist"
apt-get update && apt-get install -y tzdata locales
php -v
apt-get install -y php8.1
php -v
apt-get install -y composer
composer --version
composer install
export HTTP_PROXY= && export HTTPS_PROXY= && composer install
apt-get install -y php8.1-xml php8.1-simplexml php8.1-dom
composer install
./vendor/bin/phpunit
./vendor/bin/phpstan --version
composer require --dev phpstan/phpstan:^1.13
composer require --dev phpstan/phpstan:^1.12
open "phpunit.xml.dist"
edit '<testsuite name="phpstan">
      <directory>tests/PHPStan</directory>
    </testsuite>' '<!-- <testsuite name="phpstan">
      <directory>tests/PHPStan</directory>
    </testsuite> -->' False
cp phpunit.xml.dist phpunit.xml.dist.bak && sed -i 's/<testsuite name="phpstan">/<!-- <testsuite name="phpstan">/g' phpunit.xml.dist && sed -i 's/<directory>tests\/PHPStan<\/directory>/<directory>tests\/PHPStan<\/directory> -->/g' phpunit.xml.dist
./vendor/bin/phpunit
mv phpunit.xml.dist.bak phpunit.xml.dist
./vendor/bin/phpunit --exclude-testsuite phpstan
timedatectl
date +%Z
export TZ=America/Toronto && ./vendor/bin/phpunit --exclude-testsuite phpstan
