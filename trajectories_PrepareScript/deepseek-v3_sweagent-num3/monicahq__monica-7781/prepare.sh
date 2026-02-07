ls -la
ls -la .github/workflows
open ".github/workflows/tests.yml"
open "composer.json"
composer install
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
apt-get update
apt-get install -y php8.3 php8.3-cli php8.3-common php8.3-mbstring php8.3-xml php8.3-zip php8.3-curl php8.3-intl php8.3-fileinfo
apt-get install -y software-properties-common
add-apt-repository ppa:ondrej/php -y
apt-get update
apt-get install -y php8.3 php8.3-cli php8.3-common php8.3-mbstring php8.3-xml php8.3-zip php8.3-curl php8.3-intl php8.3-fileinfo
php -v
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php composer-setup.php --install-dir=/usr/local/bin --filename=composer
composer --version
composer install
apt-get install -y php8.3-bcmath
composer install
open "README.md"
find_file Makefile
find_file phpunit.xml
open "phpunit.xml"
apt-get install -y sqlite3 php8.3-sqlite3
./vendor/bin/phpunit
mkdir -p database && touch database/database-test.sqlite
curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs
npm install -g yarn
apt-get install -y npm
npm install -g yarn
yarn --version
/usr/local/bin/yarn --version
npm uninstall -g yarn
npm install -g yarn
yarn --version
curl -o- -L https://yarnpkg.com/install.sh | bash
apt-get install -y curl
curl -o- -L https://yarnpkg.com/install.sh | bash
npm install -g yarn
yarn --version
npm uninstall -g yarn
curl -o- -L https://yarnpkg.com/install.sh | bash
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
yarn --version
./vendor/bin/phpunit
echo "APP_ENV=testing" > .env && echo "DB_CONNECTION=testing" >> .env
open ".env"
cat .env
touch database/database-test.sqlite && chmod 777 database/database-test.sqlite

