ls -la
ls -la .github
ls -la .github/workflows
open ".github/workflows/test-phpunit.yml"
open "composer.json"
apt-get update && apt-get install -y php php-xml php-mbstring php-sqlite3 php-pgsql php-mysql php-imagick
composer install --no-progress --prefer-dist --optimize-autoloader
apt-get install -y composer
composer install --no-progress --prefer-dist --optimize-autoloader
apt-get install -y php-curl
composer install --no-progress --prefer-dist --optimize-autoloader
vendor/bin/phpunit
ls -la tests
vendor/bin/phpunit -c tests/phpunit.xml
