ls -la
ls -la .github/workflows
open ".github/workflows/tests.yml"
sudo apt update && sudo apt install -y php8.2 php8.2-curl php8.2-dom php8.2-mbstring php8.2-zip php8.2-pcntl php8.2-pdo php8.2-sqlite3 php8.2-gd php8.2-redis php8.2-igbinary php8.2-msgpack php8.2-memcached php8.2-gmp
apt update && apt install -y php8.2 php8.2-curl php8.2-dom php8.2-mbstring php8.2-zip php8.2-pcntl php8.2-pdo php8.2-sqlite3 php8.2-gd php8.2-redis php8.2-igbinary php8.2-msgpack php8.2-memcached php8.2-gmp
apt install -y software-properties-common && add-apt-repository ppa:ondrej/php -y && apt update && apt install -y php8.2 php8.2-curl php8.2-dom php8.2-mbstring php8.2-zip php8.2-pcntl php8.2-pdo php8.2-sqlite3 php8.2-gd php8.2-redis php8.2-igbinary php8.2-msgpack php8.2-memcached php8.2-gmp
php -v && curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
dpkg -l | grep php8.2 && which php || find / -name php -type f -executable 2>/dev/null
apt install -y php8.2-cli php8.2-curl php8.2-xml php8.2-mbstring php8.2-zip php8.2-sqlite3 php8.2-gd php8.2-redis php8.2-igbinary php8.2-msgpack php8.2-memcached php8.2-gmp
php -v
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
apt install -y curl && curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
composer --version
composer install --no-interaction --prefer-dist
open "phpunit.xml.dist"
./vendor/bin/phpunit
cat .env.testing || echo "No .env.testing file found"
create .env.testing
edit '' 'APP_ENV=testing
APP_DEBUG=true
APP_KEY=base64:randomstringof32chars=

DB_CONNECTION=sqlite
DB_DATABASE=:memory:

CACHE_DRIVER=array
QUEUE_CONNECTION=sync
SESSION_DRIVER=array

REDIS_HOST=127.0.0.1
REDIS_PORT=6379

MAIL_MAILER=log

AWS_ACCESS_KEY_ID=
AWS_SECRET_ACCESS_KEY=
AWS_DEFAULT_REGION=us-east-1
AWS_BUCKET=

LOG_CHANNEL=testing

BROADCAST_DRIVER=log

PUSHER_APP_ID=
PUSHER_APP_KEY=
PUSHER_APP_SECRET=
PUSHER_APP_CLUSTER=mt1

MEMCACHED_HOST=127.0.0.1

DYNAMODB_ENDPOINT=

SCOUT_DRIVER=null

SANCTUM_STATEFUL_DOMAINS=

SESSION_DOMAIN=

TELESCOPE_ENABLED=false

HORIZON_PREFIX=horizon-testing

MIX_PUSHER_APP_KEY="${PUSHER_APP_KEY}"
MIX_PUSHER_APP_CLUSTER="${PUSHER_APP_CLUSTER}"
' True
edit '' 'APP_ENV=testing
APP_DEBUG=true
APP_KEY=base64:randomstringof32chars=

DB_CONNECTION=sqlite
DB_DATABASE=:memory:

CACHE_DRIVER=array
QUEUE_CONNECTION=sync
SESSION_DRIVER=array
' True
echo -e "APP_ENV=testing\nAPP_DEBUG=true\nAPP_KEY=base64:randomstringof32chars=\n\nDB_CONNECTION=sqlite\nDB_DATABASE=:memory:\n\nCACHE_DRIVER=array\nQUEUE_CONNECTION=sync\nSESSION_DRIVER=array\n" > .env.testing
cat .env.testing
./vendor/bin/phpunit
grep -A 10 "ERRORS!" /testbed/tests/Testing/Console/ConfigShowCommandTest.php
./vendor/bin/phpunit --verbose
./vendor/bin/phpunit --debug
apt install -y redis-server && systemctl start redis
redis-server --daemonize yes
apt install -y memcached && memcached -u root -d
memcached -u root -d
cat .env.testing
grep -i "dynamodb" phpunit.xml.dist
./vendor/bin/phpunit
wget https://s3.us-west-2.amazonaws.com/dynamodb-local/dynamodb_local_latest.tar.gz && tar -xvzf dynamodb_local_latest.tar.gz && java -Djava.library.path=./DynamoDBLocal_lib -jar DynamoDBLocal.jar -sharedDb &
apt install -y wget
wget https://s3.us-west-2.amazonaws.com/dynamodb-local/dynamodb_local_latest.tar.gz && tar -xvzf dynamodb_local_latest.tar.gz && java -Djava.library.path=./DynamoDBLocal_lib -jar DynamoDBLocal.jar -sharedDb &
cat wget-log
ps aux | grep DynamoDBLocal
java -Djava.library.path=./DynamoDBLocal_lib -jar DynamoDBLocal.jar -sharedDb &
apt install -y openjdk-11-jre-headless
java -version && java -Djava.library.path=./DynamoDBLocal_lib -jar DynamoDBLocal.jar -sharedDb &
ps aux | grep DynamoDBLocal
java -Djava.library.path=./DynamoDBLocal_lib -jar DynamoDBLocal.jar -sharedDb
ls -la
tar -xvzf dynamodb_local_latest.tar.gz && ls -la
wget https://s3.us-west-2.amazonaws.com/dynamodb-local/dynamodb_local_latest.tar.gz && tar -xvzf dynamodb_local_latest.tar.gz && ls -la
./vendor/bin/phpunit
wget https://s3.us-west-2.amazonaws.com/dynamodb-local/dynamodb_local_latest.tar.gz && tar -xvzf dynamodb_local_latest.tar.gz && java -Djava.library.path=./DynamoDBLocal_lib -jar DynamoDBLocal.jar -sharedDb &
ps aux | grep DynamoDBLocal

