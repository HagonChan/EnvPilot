ls -la
ls -la .github/workflows
open ".github/workflows/tests.yml"
apt-get update && apt-get install -y php8.1 composer
apt-get install -y tzdata locales
locale-gen fr_FR.UTF-8 sr_ME.UTF-8 ar_AE.UTF-8 zh_TW.UTF-8 zh_CN.UTF-8 yo_NG.UTF-8 en_US.UTF-8
composer install
composer install --no-plugins --no-scripts
export http_proxy= && export https_proxy= && composer install --no-plugins --no-scripts
apt-get install -y php8.1-xml php8.1-simplexml php8.1-dom
composer install --no-plugins --no-scripts
./vendor/bin/phpunit
