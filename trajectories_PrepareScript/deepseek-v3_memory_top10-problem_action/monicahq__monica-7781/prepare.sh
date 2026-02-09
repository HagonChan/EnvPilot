ls -la
ls -la .github/workflows
open ".github/workflows/tests.yml"
open "composer.json"
open "README.md"
apt-get update && apt-get install -y php php-mysql php-pgsql sqlite nodejs npm
composer install
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
apt-get install -y curl
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
composer install
apt-get install -y software-properties-common && add-apt-repository ppa:ondrej/php -y && apt-get update && apt-get install -y php8.3 php8.3-mysql php8.3-pgsql php8.3-sqlite3 php8.3-intl php8.3-curl php8.3-bcmath php8.3-dom php8.3-xml
php -v
composer install
apt-get install -y zip unzip
composer config --global process-timeout 600
composer install
apt-get install -y php8.3-mbstring
composer install
npm install
node -v
curl -fsSL https://deb.nodesource.com/setup_16.x | bash - && apt-get install -y nodejs
apt-get remove -y libnode-dev && curl -fsSL https://deb.nodesource.com/setup_16.x | bash - && apt-get install -y nodejs
apt-get remove -y libnode72 && curl -fsSL https://deb.nodesource.com/setup_16.x | bash - && apt-get install -y nodejs
apt-get remove -y --purge libnode72 && curl -fsSL https://deb.nodesource.com/setup_16.x | bash - && apt-get install -y nodejs
apt-get remove -y --purge libnode72 && curl -fsSL https://deb.nodesource.com/setup_16.x | bash - && apt-get install -y --fix-broken && dpkg -i --force-overwrite /var/cache/apt/archives/nodejs_16.20.2-1nodesource1_amd64.deb
rm -f /usr/share/systemtap/tapset/node.stp && apt-get install -y --fix-broken && dpkg -i --force-overwrite /var/cache/apt/archives/nodejs_16.20.2-1nodesource1_amd64.deb
curl -fsSL https://deb.nodesource.com/setup_16.x | bash - && apt-get install -y nodejs
apt-get remove -y --purge libnode72 && rm -f /usr/share/systemtap/tapset/node.stp && apt-get install -y nodejs
dpkg -i --force-overwrite /var/cache/apt/archives/nodejs_16.20.2-1nodesource1_amd64.deb
curl -fsSL https://deb.nodesource.com/setup_16.x | bash - && apt-get install -y nodejs
rm -f /usr/share/systemtap/tapset/node.stp && apt-get install -y --fix-broken && apt-get install -y nodejs
apt-get remove -y --purge libnode72 && apt-get install -y nodejs
rm -f /usr/share/systemtap/tapset/node.stp && apt-get install -y --fix-broken && apt-get install -y nodejs
apt-get remove -y --purge libnode72 && rm -f /usr/share/systemtap/tapset/node.stp && apt-get install -y nodejs
rm -f /usr/share/systemtap/tapset/node.stp && apt-get install -y --fix-broken && apt-get install -y nodejs
apt-get remove -y --purge libnode72 && rm -f /usr/share/systemtap/tapset/node.stp && apt-get install -y --fix-broken && apt-get install -y nodejs
rm -f /usr/share/systemtap/tapset/node.stp && apt-get install -y --fix-broken && apt-get install -y nodejs
apt-get remove -y --purge libnode72 && rm -f /usr/share/systemtap/tapset/node.stp && apt-get install -y --fix-broken && apt-get install -y nodejs
rm -f /usr/share/systemtap/tapset/node.stp && apt-get install -y --fix-broken && apt-get install -y nodejs
apt-get remove -y --purge libnode72 && rm -f /usr/share/systemtap/tapset/node.stp && apt-get install -y --fix-broken && apt-get install -y nodejs
rm -f /usr/share/systemtap/tapset/node.stp && apt-get install -y --fix-broken && apt-get install -y nodejs
apt-get remove -y --purge libnode72 && rm -f /usr/share/systemtap/tapset/node.stp && apt-get install -y --fix-broken && apt-get install -y nodejs
rm -f /usr/share/systemtap/tapset/node.stp && apt-get install -y --fix-broken && apt-get install -y nodejs
apt-get remove -y --purge libnode72 && rm -f /usr/share/systemtap/tapset/node.stp && apt-get install -y --fix-broken && apt-get install -y nodejs
rm -f /usr/share/systemtap/tapset/node.stp && apt-get install -y --fix-broken && apt-get install -y nodejs
apt-get remove -y --purge libnode72 && rm -f /usr/share/systemtap/tapset/node.stp && apt-get install -y --fix-broken && apt-get install -y nodejs
rm -f /usr/share/systemtap/tapset/node.stp && apt-get install -y --fix-broken && apt-get install -y nodejs
apt-get remove -y --purge libnode72 && rm -f /usr/share/systemtap/tapset/node.stp && apt-get install -y --fix-broken && apt-get install -y nodejs

