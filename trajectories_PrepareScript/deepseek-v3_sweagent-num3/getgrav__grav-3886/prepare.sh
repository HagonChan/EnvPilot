ls -la
open ".travis.yml"
open "composer.json"
open "codeception.yml"
apt-get update && apt-get install -y php composer
composer install --dev --prefer-dist
apt-get install -y php-curl php-zip php-xml php-gd
composer install --dev --prefer-dist
vendor/bin/codecept run
open "tests/unit/Grav/Common/AssetsTest.php"
goto 620
curl -I https://fonts.googleapis.com/css?family=Roboto
wget --spider https://fonts.googleapis.com/css?family=Roboto
