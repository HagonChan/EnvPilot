ls -la
ls -la .github/workflows
open ".github/workflows/tests.yaml"
php -v
apt-get update && apt-get install -y php7.4 php7.4-opcache php7.4-gd
apt-get install -y php8.1 php8.1-opcache php8.1-gd
php -v
php -m | grep gd
apt-get install -y composer
composer --version
composer install --prefer-dist --no-progress
apt-get install -y php8.1-curl php8.1-zip php8.1-xml
php -m | grep -E 'curl|zip|dom'
composer install --prefer-dist --no-progress
vendor/bin/codecept run
open "tests/unit/Grav/Common/AssetsTest.php"
goto 620
curl -I https://fonts.googleapis.com/css?family=Roboto
apt-get install -y curl
curl -I https://fonts.googleapis.com/css?family=Roboto
