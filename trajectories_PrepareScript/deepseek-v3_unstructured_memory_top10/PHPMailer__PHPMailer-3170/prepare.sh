ls -la
ls -la .github/workflows
open ".github/workflows/tests.yml"
open "composer.json"
apt-get update && apt-get install -y imap mbstring openssl intl ctype filter hash curl dom json libxml tokenizer xml xmlwriter
php -v
apt-get update && apt-get install -y php8.1 php8.1-imap php8.1-mbstring php8.1-openssl php8.1-intl php8.1-ctype php8.1-filter php8.1-hash php8.1-curl php8.1-dom php8.1-json php8.1-libxml php8.1-tokenizer php8.1-xml php8.1-xmlwriter
apt-get install -y software-properties-common && add-apt-repository ppa:ondrej/php -y && apt-get update
apt-get install -y php8.1 php8.1-imap php8.1-mbstring php8.1-openssl php8.1-intl php8.1-ctype php8.1-filter php8.1-hash php8.1-curl php8.1-dom php8.1-json php8.1-libxml php8.1-tokenizer php8.1-xml php8.1-xmlwriter
apt-get install -y php8.1 php8.1-imap php8.1-mbstring php8.1-intl php8.1-curl php8.1-xml
php -v
php -m
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
apt-get install -y curl
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('sha384', 'composer-setup.php') === '55ce33d7678c5a611085589f1f3ddf8b3c52d662cd01d4ba75c0ee0459970c2200a51f492d557530c71c15d8dba01eae') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
rm composer-setup.php && php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('sha384', 'composer-setup.php') === '55ce33d7678c5a611085589f1f3ddf8b3c52d662cd01d4ba75c0ee0459970c2200a51f492d557530c71c15d8dba01eae') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
curl -o composer-setup.php https://getcomposer.org/installer
curl -o composer-setup.php http://getcomposer.org/installer
ls -la
