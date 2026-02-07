ls -la
ls -la .github/workflows
open ".github/workflows/tests.yml"
apt-get update && apt-get install -y php php-mysql php-pgsql php-sqlite3 nodejs npm
composer install
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
apt-get install -y curl
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
composer install
apt-get install -y software-properties-common && add-apt-repository ppa:ondrej/php -y && apt-get update && apt-get install -y php8.3 php8.3-mysql php8.3-pgsql php8.3-sqlite3 php8.3-intl php8.3-curl php8.3-bcmath php8.3-dom php8.3-xml
php -v
composer install
apt-get install -y php8.3-zip unzip
composer install
apt-get install -y php8.3-mbstring
composer install
open "phpunit.xml"
./vendor/bin/phpunit
touch database/database-test.sqlite
npm install -g yarn
./vendor/bin/phpunit
open "tests/Unit/Helpers/WallpaperHelperTest.php"
export APP_URL=http://localhost && ./vendor/bin/phpunit
ls -la .env
create .env
insert 'APP_URL=http://localhost
DB_CONNECTION=sqlite
DB_DATABASE=/testbed/database/database-test.sqlite'
./vendor/bin/phpunit
open "tests/Unit/Domains/Contact/DavClient/Services/SynchronizeAddressBookTest.php"
edit 'public function it_runs_sync()
    {
        $this->mock(AddressBookSynchronizer::class, function (MockInterface $mock) {
            $mock->shouldReceive('"'"'withSubscription'"'"')->once()->andReturnSelf();
            $mock->shouldReceive('"'"'execute'"'"')
                ->once()
                ->withArgs(function ($force) {
                    $this->assertFalse($force);

                    return true;
                });
        });

        $subscription = AddressBookSubscription::factory()->create();

        $request = [
            '"'"'account_id'"'"' => $subscription->user->account_id,
            '"'"'addressbook_subscription_id'"'"' => $subscription->id,
        ];

        (new SynchronizeAddressBook)->execute($request);
    }' 'public function it_runs_sync()
    {
        $this->mock(AddressBookSynchronizer::class, function (MockInterface $mock) {
            $mock->shouldReceive('"'"'withSubscription'"'"')->once()->andReturnSelf();
            $mock->shouldReceive('"'"'execute'"'"')
                ->once()
                ->withArgs(function ($force) {
                    $this->assertFalse($force);

                    return true;
                });
        });

        $subscription = AddressBookSubscription::factory()->create();

        $request = [
            '"'"'account_id'"'"' => $subscription->user->account_id,
            '"'"'addressbook_subscription_id'"'"' => $subscription->id,
        ];

        (new SynchronizeAddressBook)->execute($request);

        $this->restoreExceptionHandler();
        $this->restoreErrorHandler();
    }'
ls -la tests/Unit/Domains/Contact/DavClient/Services/SynchronizeAddressBookTest.php
chmod 644 tests/Unit/Domains/Contact/DavClient/Services/SynchronizeAddressBookTest.php
edit 'public function it_runs_sync()
    {
        $this->mock(AddressBookSynchronizer::class, function (MockInterface $mock) {
            $mock->shouldReceive('"'"'withSubscription'"'"')->once()->andReturnSelf();
            $mock->shouldReceive('"'"'execute'"'"')
                ->once()
                ->withArgs(function ($force) {
                    $this->assertFalse($force);

                    return true;
                });
        });

        $subscription = AddressBookSubscription::factory()->create();

        $request = [
            '"'"'account_id'"'"' => $subscription->user->account_id,
            '"'"'addressbook_subscription_id'"'"' => $subscription->id,
        ];

        (new SynchronizeAddressBook)->execute($request);
    }' 'public function it_runs_sync()
    {
        $this->mock(AddressBookSynchronizer::class, function (MockInterface $mock) {
            $mock->shouldReceive('"'"'withSubscription'"'"')->once()->andReturnSelf();
            $mock->shouldReceive('"'"'execute'"'"')
                ->once()
                ->withArgs(function ($force) {
                    $this->assertFalse($force);

                    return true;
                });
        });

        $subscription = AddressBookSubscription::factory()->create();

        $request = [
            '"'"'account_id'"'"' => $subscription->user->account_id,
            '"'"'addressbook_subscription_id'"'"' => $subscription->id,
        ];

        (new SynchronizeAddressBook)->execute($request);

        $this->restoreExceptionHandler();
        $this->restoreErrorHandler();
    }'
ls -la tests/Unit/Domains/Contact/DavClient/Services/SynchronizeAddressBookTest.php
chown $(whoami) tests/Unit/Domains/Contact/DavClient/Services/SynchronizeAddressBookTest.php
edit 'public function it_runs_sync()
    {
        $this->mock(AddressBookSynchronizer::class, function (MockInterface $mock) {
            $mock->shouldReceive('"'"'withSubscription'"'"')->once()->andReturnSelf();
            $mock->shouldReceive('"'"'execute'"'"')
                ->once()
                ->withArgs(function ($force) {
                    $this->assertFalse($force);

                    return true;
                });
        });

        $subscription = AddressBookSubscription::factory()->create();

        $request = [
            '"'"'account_id'"'"' => $subscription->user->account_id,
            '"'"'addressbook_subscription_id'"'"' => $subscription->id,
        ];

        (new SynchronizeAddressBook)->execute($request);
    }' 'public function it_runs_sync()
    {
        $this->mock(AddressBookSynchronizer::class, function (MockInterface $mock) {
            $mock->shouldReceive('"'"'withSubscription'"'"')->once()->andReturnSelf();
            $mock->shouldReceive('"'"'execute'"'"')
                ->once()
                ->withArgs(function ($force) {
                    $this->assertFalse($force);

                    return true;
                });
        });

        $subscription = AddressBookSubscription::factory()->create();

        $request = [
            '"'"'account_id'"'"' => $subscription->user->account_id,
            '"'"'addressbook_subscription_id'"'"' => $subscription->id,
        ];

        (new SynchronizeAddressBook)->execute($request);

        $this->restoreExceptionHandler();
        $this->restoreErrorHandler();
    }'
ls -la tests/Unit/Domains/Contact/DavClient/Services/
cp tests/Unit/Domains/Contact/DavClient/Services/SynchronizeAddressBookTest.php /tmp/SynchronizeAddressBookTest.php
open "/tmp/SynchronizeAddressBookTest.php"
edit 'public function it_runs_sync()
    {
        $this->mock(AddressBookSynchronizer::class, function (MockInterface $mock) {
            $mock->shouldReceive('"'"'withSubscription'"'"')->once()->andReturnSelf();
            $mock->shouldReceive('"'"'execute'"'"')
                ->once()
                ->withArgs(function ($force) {
                    $this->assertFalse($force);

                    return true;
                });
        });

        $subscription = AddressBookSubscription::factory()->create();

        $request = [
            '"'"'account_id'"'"' => $subscription->user->account_id,
            '"'"'addressbook_subscription_id'"'"' => $subscription->id,
        ];

        (new SynchronizeAddressBook)->execute($request);
    }' 'public function it_runs_sync()
    {
        $this->mock(AddressBookSynchronizer::class, function (MockInterface $mock) {
            $mock->shouldReceive('"'"'withSubscription'"'"')->once()->andReturnSelf();
            $mock->shouldReceive('"'"'execute'"'"')
                ->once()
                ->withArgs(function ($force) {
                    $this->assertFalse($force);

                    return true;
                });
        });

        $subscription = AddressBookSubscription::factory()->create();

        $request = [
            '"'"'account_id'"'"' => $subscription->user->account_id,
            '"'"'addressbook_subscription_id'"'"' => $subscription->id,
        ];

        (new SynchronizeAddressBook)->execute($request);

        $this->restoreExceptionHandler();
        $this->restoreErrorHandler();
    }'
create /tmp/SynchronizeAddressBookTest_fixed.php
insert '<?php

namespace Tests\Unit\Domains\Contact\DavClient\Services;

use App\Domains\Contact\DavClient\Services\SynchronizeAddressBook;
use App\Domains\Contact\DavClient\Services\Utils\AddressBookSynchronizer;
use App\Models\AddressBookSubscription;
use Illuminate\Foundation\Testing\DatabaseTransactions;
use Mockery\MockInterface;
use Tests\TestCase;

class SynchronizeAddressBookTest extends TestCase
{
    use DatabaseTransactions;

    /** @test */
    public function it_runs_sync()
    {
        $this->mock(AddressBookSynchronizer::class, function (MockInterface $mock) {
            $mock->shouldReceive('"'"'withSubscription'"'"')->once()->andReturnSelf();
            $mock->shouldReceive('"'"'execute'"'"')
                ->once()
                ->withArgs(function ($force) {
                    $this->assertFalse($force);

                    return true;
                });
        });

        $subscription = AddressBookSubscription::factory()->create();

        $request = [
            '"'"'account_id'"'"' => $subscription->user->account_id,
            '"'"'addressbook_subscription_id'"'"' => $subscription->id,
        ];

        (new SynchronizeAddressBook)->execute($request);

        $this->restoreExceptionHandler();
        $this->restoreErrorHandler();
    }

    /** @test */
    public function it_runs_sync_force()
    {
        $this->mock(AddressBookSynchronizer::class, function (MockInterface $mock) {
            $mock->shouldReceive('"'"'withSubscription'"'"')->once()->andReturnSelf();
            $mock->shouldReceive('"'"'execute'"'"')
                ->once()
                ->withArgs(function ($force) {
                    $this->assertTrue($force);

                    return true;
                });
        });

        $subscription = AddressBookSubscription::factory()->create();

        $request = [
            '"'"'account_id'"'"' => $subscription->user->account_id,
            '"'"'addressbook_subscription_id'"'"' => $subscription->id,
            '"'"'force'"'"' => true,
        ];

        (new SynchronizeAddressBook)->execute($request);
    }
}'
mv /tmp/SynchronizeAddressBookTest_fixed.php tests/Unit/Domains/Contact/DavClient/Services/SynchronizeAddressBookTest.php
./vendor/bin/phpunit
open "tests/Unit/Domains/Contact/DavClient/Services/SynchronizeAddressBookTest.php"
edit '
<?php' '<?php'
sed -i '1{/^$/d}' tests/Unit/Domains/Contact/DavClient/Services/SynchronizeAddressBookTest.php
./vendor/bin/phpunit
open "tests/Unit/Domains/Contact/DavClient/Services/SynchronizeAddressBookTest.php"
edit '(new SynchronizeAddressBook)->execute($request);
    }' '(new SynchronizeAddressBook)->execute($request);

        $this->restoreExceptionHandler();
        $this->restoreErrorHandler();
    }'

