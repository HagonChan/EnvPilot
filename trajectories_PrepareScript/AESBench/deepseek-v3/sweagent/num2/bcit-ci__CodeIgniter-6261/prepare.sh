ls -la
ls -la .github/workflows
open ".github/workflows/test-phpunit.yml"
open "composer.json"
apt-get update && apt-get install -y php8.1 php8.1-cli php8.1-mysql php8.1-pgsql php8.1-sqlite3 composer
composer install
apt-get install -y php8.1-xml
composer install
./vendor/bin/phpunit --color=always --coverage-text --configuration tests/travis/sqlite.phpunit.xml
