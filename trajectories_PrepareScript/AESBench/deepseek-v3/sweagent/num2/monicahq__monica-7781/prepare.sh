ls -la
ls -la .github/workflows
open ".github/workflows/tests.yml"
open "composer.json"
open "package.json"
composer install
apt-get update && apt-get install -y composer
composer install
apt-get install -y software-properties-common && add-apt-repository -y ppa:ondrej/php && apt-get update && apt-get install -y php8.3 php8.3-cli php8.3-common php8.3-curl php8.3-bcmath php8.3-dom php8.3-mbstring php8.3-intl php8.3-xml
php -v && php -m
update-alternatives --set php /usr/bin/php8.3
php -v && php -m
composer install
yarn install
apt-get install -y yarn
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && apt-get update && apt-get install -y yarn
apt-get install -y curl
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && apt-get update && apt-get install -y yarn
yarn install
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | gpg --dearmor | tee /usr/share/keyrings/yarnkey.gpg >/dev/null && echo "deb [signed-by=/usr/share/keyrings/yarnkey.gpg] https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && apt-get update && apt-get install -y --no-install-recommends yarn
curl -o- -L https://yarnpkg.com/install.sh | bash
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH" && yarn --version
apt-get install -y npm
npm install -g yarn
yarn --version
apt-get install -y npm
npm install -g yarn
yarn --version
apt-get install -y npm
npm install -g yarn
yarn --version
apt-get install -y npm
npm install -g yarn
yarn --version
apt-get install -y npm
npm install -g yarn
yarn --version
apt-get install -y npm
npm install -g yarn
yarn --version
apt-get install -y npm
npm install -g yarn
yarn --version
apt-get install -y npm
npm install -g yarn
yarn --version
apt-get install -y npm
npm install -g yarn
yarn --version

