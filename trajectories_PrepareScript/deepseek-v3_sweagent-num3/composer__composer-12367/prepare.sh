ls -la
ls -la .github/workflows
open ".github/workflows/continuous-integration.yml"
scroll_down
open "composer.json"
open "phpunit.xml.dist"
sudo apt-get update && sudo apt-get install -y php8.1 php8.1-intl php8.1-zip composer
apt-get update && apt-get install -y php8.1 php8.1-intl php8.1-zip composer
composer install
apt-get install -y php8.1-xml
composer install
vendor/bin/simple-phpunit --verbose
apt-get install -y php8.1-curl
vendor/bin/simple-phpunit --verbose
