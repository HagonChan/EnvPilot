ls -la
ls -la .github/workflows
open ".github/workflows/continuous-integration.yml"
open "composer.json"
open "README.md"
apt-get update && apt-get install -y 7z unzip gzip tar unrar xz git mercurial fossil perforce subversion
apt-get install -y unzip gzip tar unrar git mercurial fossil subversion
apt-get install -y php7.4 php7.4-cli php7.4-intl php7.4-zip
apt-get install -y php php-cli php-intl php-zip
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
apt-get install -y curl
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
php --version && composer --version
composer install
apt-get install -y php8.1-xml
composer install
composer test
./vendor/bin/phpunit
open "composer.json"
composer install --dev
ls -la vendor/symfony/phpunit-bridge
ls -la vendor/bin

