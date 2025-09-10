ls -la
open "README.md"
ls -la .github/workflows
open ".github/workflows/tests.yml"
open "composer.json"
open "phpunit.xml"
apt-get update && apt-get install -y php8.3 php8.3-mysql php8.3-pgsql php8.3-sqlite3
apt-get install -y software-properties-common && add-apt-repository ppa:ondrej/php -y && apt-get update
apt-get install -y php8.3 php8.3-mysql php8.3-pgsql php8.3-sqlite3
curl -fsSL https://deb.nodesource.com/setup_22.x | bash - && apt-get install -y nodejs
apt-get install -y curl
curl -fsSL https://deb.nodesource.com/setup_22.x | bash - && apt-get install -y nodejs
php -v && node -v
composer --version || ( curl -sS https://getcomposer.org/installer | php && mv composer.phar /usr/local/bin/composer )
mv composer.phar /usr/local/bin/composer && chmod +x /usr/local/bin/composer
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
curl -sS https://getcomposer.org/installer -o composer-setup.php && php composer-setup.php --install-dir=/usr/local/bin --filename=composer && rm composer-setup.php
wget https://getcomposer.org/composer-stable.phar -O /usr/local/bin/composer && chmod +x /usr/local/bin/composer
apt-get install -y wget
wget https://getcomposer.org/composer-stable.phar -O /usr/local/bin/composer && chmod +x /usr/local/bin/composer
composer --version
composer install
apt-get install -y php8.3-intl php8.3-curl php8.3-bcmath php8.3-dom php8.3-xml
composer install
apt-get install -y zip unzip php8.3-zip
composer install
apt-get install -y php8.3-mbstring
apt-get clean && apt-get install -y php8.3-mbstring
apt-get autoremove -y && apt-get clean && apt-get install -y php8.3-mbstring
df -h
du -sh /var/* | sort -rh | head -n 10
du -sh /var/lib/* | sort -rh | head -n 10
apt-get clean
df -h
rm -rf /var/log/*
df -h
rm -rf /tmp/*
df -h
rm -rf /var/cache/*
df -h
rm -rf /var/lib/apt/lists/*
df -h
rm -rf /usr/share/doc/*
df -h
rm -rf /usr/share/man/*
df -h
rm -rf /usr/share/locale/*
df -h
rm -rf /usr/share/info/*

