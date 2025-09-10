ls -la
ls -la .github/workflows
open ".github/workflows/tests.yaml"
composer --version
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" && php composer-setup.php --install-dir=/usr/local/bin --filename=composer --version=2.0.0
apt-get update && apt-get install -y php php-opcache php-gd
apt-get install -y php php-opcache php-gd
php --version
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" && php composer-setup.php --install-dir=/usr/local/bin --filename=composer --version=2.0.0
composer --version
rm -f /usr/local/bin/composer && php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" && php composer-setup.php --install-dir=/usr/local/bin --filename=composer
composer --version
composer install
apt-get install -y php-curl php-zip php-xml
apt-get clean && apt-get update
apt-get install -y php-curl php-zip php-xml
df -h
du -sh /var/* | sort -rh | head -n 10
vendor/bin/codecept run
ls -la tests
open "tests/_bootstrap.php"
ls -la *.xml
