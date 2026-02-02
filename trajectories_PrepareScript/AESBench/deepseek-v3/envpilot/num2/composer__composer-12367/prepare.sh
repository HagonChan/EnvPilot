ls -la
ls -la .github
ls -la .github/workflows
open ".github/workflows/continuous-integration.yml"
scroll_down
apt-get update && apt-get install -y php php-intl php-zip composer git unzip
composer install --ansi --no-interaction --no-progress --prefer-dist
apt-get install -y php8.1-xml
composer install --ansi --no-interaction --no-progress --prefer-dist
vendor/bin/simple-phpunit --verbose
apt-get install -y php8.1-curl
vendor/bin/simple-phpunit --verbose
curl -I https://repo.packagist.org
apt-get install -y curl
curl -I https://repo.packagist.org
curl -I https://github.com
curl -I https://packagist.org
composer config -g repo.packagist composer https://packagist.org
vendor/bin/simple-phpunit --verbose
composer diagnose
unset http_proxy https_proxy
vendor/bin/simple-phpunit --verbose
vendor/bin/simple-phpunit --verbose
