ls -la
ls -la .github/workflows
open ".github/workflows/tests.yml"
php --version
apt update && apt install -y php8.1
php --version
apt install -y composer
composer --version
composer install
apt install -y php8.1-xml php8.1-simplexml php8.1-dom
php -m | grep -E 'xml|simplexml|dom'
composer install
./vendor/bin/phpunit
composer show phpstan/phpstan
composer require phpstan/phpstan:^1.13 --update-with-dependencies
composer show -a phpstan/phpstan
apt install -y php8.0 php8.0-xml php8.0-simplexml php8.0-dom
add-apt-repository -y ppa:ondrej/php && apt update
apt install -y software-properties-common
add-apt-repository -y ppa:ondrej/php && apt update
apt install -y php8.0 php8.0-xml php8.0-simplexml php8.0-dom
php --version
update-alternatives --set php /usr/bin/php8.0
php --version
composer install
update-alternatives --set php /usr/bin/php8.1
php --version
composer install
./vendor/bin/phpunit
composer show phpstan/phpstan
composer require phpstan/phpstan:^1.13 --update-with-dependencies
update-alternatives --set php /usr/bin/php8.0
php --version
composer install
update-alternatives --set php /usr/bin/php8.1
php --version
composer install
./vendor/bin/phpunit
composer show phpstan/phpstan
composer require phpstan/phpstan:^1.13 --update-with-dependencies
update-alternatives --set php /usr/bin/php8.0
php --version
composer install
update-alternatives --set php /usr/bin/php8.1
php --version
composer install
./vendor/bin/phpunit
composer show phpstan/phpstan
composer require phpstan/phpstan:^1.13 --update-with-dependencies

