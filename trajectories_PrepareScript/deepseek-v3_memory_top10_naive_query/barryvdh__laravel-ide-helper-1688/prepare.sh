ls -la
ls -la .github/workflows
open ".github/workflows/run-tests.yml"
apt-get update && apt-get install -y php8.2 php8.2-pdo-sqlite php8.2-fileinfo
apt-get install -y software-properties-common && add-apt-repository ppa:ondrej/php -y && apt-get update
apt-get install -y php8.2 php8.2-pdo-sqlite php8.2-fileinfo
php -v && php -m | grep -E 'pdo_sqlite|fileinfo'
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
apt-get install -y curl
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
composer --version
composer install
composer config -g -- disable-tls true && composer install
composer require --dev barryvdh/laravel-ide-helper
composer install --dev
composer test-ci
composer global require phpunit/phpunit
apt-get install -y phpunit
phpunit --version
apt-get install -y php8.2-xml
phpunit --version
apt-get install -y php8.2-mbstring
phpunit --version
ls -la | grep -i phpunit
open "phpunit.xml.dist"
ls -la tests/
phpunit
apt-get install -y ca-certificates && update-ca-certificates
composer config -g -- disable-tls false && composer config -g -- secure-http false && composer install --dev
apt-get install -y php8.2-curl
php -m | grep curl
composer config -g http-proxy http://172.31.233.4:7890 && composer config -g https-proxy http://172.31.233.4:7890 && composer install
export HTTP_PROXY=http://172.31.233.4:7890 && export HTTPS_PROXY=http://172.31.233.4:7890 && composer install
apt-get install -y php8.2-zip unzip
php -m | grep zip
ssh-keyscan -t rsa,ecdsa,ed25519 github.com >> ~/.ssh/known_hosts
mkdir -p ~/.ssh && chmod 700 ~/.ssh && ssh-keyscan -t rsa,ecdsa,ed25519 github.com >> ~/.ssh/known_hosts
composer config -g process-timeout 600 && composer install
composer show barryvdh/laravel-ide-helper
open "composer.json"
composer test-ci
cat .env.example 2>/dev/null || echo "No .env.example file found"
ls -la | grep -E '\.env|\.env\.'
find . -name "*.env*" -o -name "config*" -o -name "*.php" | grep -E '(config|env)' | head -10
open "config/ide-helper.php"
open "tests/TestCase.php"
find . -name "*bootstrap*" -o -name "*setup*" -o -name "*test*" | grep -E '\.php$' | head -5
ls -la phpunit.xml*
open "phpunit.xml.dist"

