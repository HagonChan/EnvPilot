ls -la
ls -la .github/workflows
open ".github/workflows/run-tests.yml"
apt-get update && apt-get install -y php8.2 php8.2-sqlite3 php8.2-fileinfo
apt-get install -y software-properties-common && add-apt-repository ppa:ondrej/php -y && apt-get update
apt-get install -y php8.2 php8.2-sqlite3 php8.2-fileinfo
php -v
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
apt-get install -y curl
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
composer --version
open "composer.json"
composer install
apt-get install -y php8.2-xml
composer install
apt-get install -y php8.2-zip
COMPOSER_PROCESS_TIMEOUT=600 composer install
composer test-ci
apt-get install -y php8.2-mbstring
composer test-ci
php artisan key:generate
ls -la
composer test-ci -- -d --update-snapshots
cp .env.example .env && php artisan key:generate
echo "APP_KEY=base64:$(openssl rand -base64 32)" > .env
composer test-ci -- -d --update-snapshots
open "tests/Console/ModelsCommand/ModelHooks/Test.php"
edit ' * 
 *' ' *'
insert '$expectedContent = <<<'"'"'PHP'"'"'
<?php

declare(strict_types=1);

namespace Barryvdh\LaravelIdeHelper\Tests\Console\ModelsCommand\ModelHooks\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * @property int $id
 * @property-read string $custom
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Simple custom($custom)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Simple newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Simple query()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Simple whereId($value)
 * @mixin \Eloquent
 */
class Simple extends Model
{
}

PHP;
' 64
edit '$expectedContent = <<<'"'"'PHP'"'"'
<?php

declare(strict_types=1);

namespace Barryvdh\LaravelIdeHelper\Tests\Console\ModelsCommand\ModelHooks\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * 
 *
 * @property int $id
 * @property-read string $custom
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Simple custom($custom)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Simple newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Simple query()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Simple whereId($value)
 * @mixin \Eloquent
 */
class Simple extends Model
{
}

PHP;' ''
insert '$expectedContent = <<<'"'"'PHP'"'"'
<?php

declare(strict_types=1);

namespace Barryvdh\LaravelIdeHelper\Tests\Console\ModelsCommand\ModelHooks\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * @property int $id
 * @property-read string $custom
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Simple custom($custom)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Simple newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Simple query()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Simple whereId($value)
 * @mixin \Eloquent
 */
class Simple extends Model
{
}

PHP;
' 64
edit '$expectedContent = <<<'"'"'PHP'"'"'
<?php

declare(strict_types=1);

namespace Barryvdh\LaravelIdeHelper\Tests\Console\ModelsCommand\ModelHooks\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * 
 *
 * @property int $id
 * @property-read string $custom
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Simple custom($custom)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Simple newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Simple query()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Simple whereId($value)
 * @mixin \Eloquent
 */
class Simple extends Model
{
}

PHP;
        $expectedContent = <<<'"'"'PHP'"'"'
<?php

declare(strict_types=1);

namespace Barryvdh\LaravelIdeHelper\Tests\Console\ModelsCommand\ModelHooks\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * @property int $id
 * @property-read string $custom
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Simple custom($custom)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Simple newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Simple query()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Simple whereId($value)
 * @mixin \Eloquent
 */
class Simple extends Model
{
}

PHP;
        $expectedContent = <<<'"'"'PHP'"'"'
<?php

declare(strict_types=1);

namespace Barryvdh\LaravelIdeHelper\Tests\Console\ModelsCommand\ModelHooks\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * 
 *
 * @property int $id
 * @property-read string $custom
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Simple custom($custom)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Simple newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Simple query()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Simple whereId($value)
 * @mixin \Eloquent
 */
class Simple extends Model
{
}

PHP;' '$expectedContent = <<<'"'"'PHP'"'"'
<?php

declare(strict_types=1);

namespace Barryvdh\LaravelIdeHelper\Tests\Console\ModelsCommand\ModelHooks\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * @property int $id
 * @property-read string $custom
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Simple custom($custom)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Simple newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Simple query()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Simple whereId($value)
 * @mixin \Eloquent
 */
class Simple extends Model
{
}

PHP;'
insert '$expectedContent = <<<'"'"'PHP'"'"'
<?php

declare(strict_types=1);

namespace Barryvdh\LaravelIdeHelper\Tests\Console\ModelsCommand\ModelHooks\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * @property int $id
 * @property-read string $custom
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Simple custom($custom)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Simple newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Simple query()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Simple whereId($value)
 * @mixin \Eloquent
 */
class Simple extends Model
{
}

PHP;
' 64
edit '$expectedContent = <<<'"'"'PHP'"'"'
<?php

declare(strict_types=1);

namespace Barryvdh\LaravelIdeHelper\Tests\Console\ModelsCommand\ModelHooks\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * 
 *
 * @property int $id
 * @property-read string $custom
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Simple custom($custom)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Simple newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Simple query()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Simple whereId($value)
 * @mixin \Eloquent
 */
class Simple extends Model
{
}

PHP;
        $expectedContent = <<<'"'"'PHP'"'"'
<?php

declare(strict_types=1);

namespace Barryvdh\LaravelIdeHelper\Tests\Console\ModelsCommand\ModelHooks\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * @property int $id
 * @property-read string $custom
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Simple custom($custom)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Simple newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Simple query()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Simple whereId($value)
 * @mixin \Eloquent
 */
class Simple extends Model
{
}

PHP;
        $expectedContent = <<<'"'"'PHP'"'"'
<?php

declare(strict_types=1);

namespace Barryvdh\LaravelIdeHelper\Tests\Console\ModelsCommand\ModelHooks\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * 
 *
 * @property int $id
 * @property-read string $custom
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Simple custom($custom)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Simple newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Simple query()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Simple whereId($value)
 * @mixin \Eloquent
 */
class Simple extends Model
{
}

PHP;' '$expectedContent = <<<'"'"'PHP'"'"'
<?php

declare(strict_types=1);

namespace Barryvdh\LaravelIdeHelper\Tests\Console\ModelsCommand\ModelHooks\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * @property int $id
 * @property-read string $custom
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Simple custom($custom)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Simple newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Simple query()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Simple whereId($value)
 * @mixin \Eloquent
 */
class Simple extends Model
{
}

PHP;'
insert '$expectedContent = <<<'"'"'PHP'"'"'
<?php

declare(strict_types=1);

namespace Barryvdh\LaravelIdeHelper\Tests\Console\ModelsCommand\ModelHooks\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * @property int $id
 * @property-read string $custom
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Simple custom($custom)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Simple newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Simple query()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Simple whereId($value)
 * @mixin \Eloquent
 */
class Simple extends Model
{
}

PHP;
' 64
edit '$expectedContent = <<<'"'"'PHP'"'"'
<?php

declare(strict_types=1);

namespace Barryvdh\LaravelIdeHelper\Tests\Console\ModelsCommand\ModelHooks\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * 
 *
 * @property int $id
 * @property-read string $custom
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Simple custom($custom)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Simple newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Simple query()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Simple whereId($value)
 * @mixin \Eloquent
 */
class Simple extends Model
{
}

PHP;
        $expectedContent = <<<'"'"'PHP'"'"'
<?php

declare(strict_types=1);

namespace Barryvdh\LaravelIdeHelper\Tests\Console\ModelsCommand\ModelHooks\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * @property int $id
 * @property-read string $custom
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Simple custom($custom)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Simple newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Simple query()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Simple whereId($value)
 * @mixin \Eloquent
 */
class Simple extends Model
{
}

PHP;
        $expectedContent = <<<'"'"'PHP'"'"'
<?php

declare(strict_types=1);

namespace Barryvdh\LaravelIdeHelper\Tests\Console\ModelsCommand\ModelHooks\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * 
 *
 * @property int $id
 * @property-read string $custom
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Simple custom($custom)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Simple newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Simple query()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Simple whereId($value)
 * @mixin \Eloquent
 */
class Simple extends Model
{
}

PHP;' '$expectedContent = <<<'"'"'PHP'"'"'
<?php

declare(strict_types=1);

namespace Barryvdh\LaravelIdeHelper\Tests\Console\ModelsCommand\ModelHooks\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * @property int $id
 * @property-read string $custom
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Simple custom($custom)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Simple newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Simple query()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Simple whereId($value)
 * @mixin \Eloquent
 */
class Simple extends Model
{
}

PHP;'
insert '$expectedContent = <<<'"'"'PHP'"'"'
<?php

declare(strict_types=1);

namespace Barryvdh\LaravelIdeHelper\Tests\Console\ModelsCommand\ModelHooks\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * @property int $id
 * @property-read string $custom
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Simple custom($custom)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Simple newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Simple query()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Simple whereId($value)
 * @mixin \Eloquent
 */
class Simple extends Model
{
}

PHP;
' 64
edit '$expectedContent = <<<'"'"'PHP'"'"'
<?php

declare(strict_types=1);

namespace Barryvdh\LaravelIdeHelper\Tests\Console\ModelsCommand\ModelHooks\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * 
 *
 * @property int $id
 * @property-read string $custom
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Simple custom($custom)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Simple newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Simple query()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Simple whereId($value)
 * @mixin \Eloquent
 */
class Simple extends Model
{
}

PHP;
        $expectedContent = <<<'"'"'PHP'"'"'
<?php

declare(strict_types=1);

namespace Barryvdh\LaravelIdeHelper\Tests\Console\ModelsCommand\ModelHooks\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * @property int $id
 * @property-read string $custom
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Simple custom($custom)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Simple newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Simple query()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Simple whereId($value)
 * @mixin \Eloquent
 */
class Simple extends Model
{
}

PHP;
        $expectedContent = <<<'"'"'PHP'"'"'
<?php

declare(strict_types=1);

namespace Barryvdh\LaravelIdeHelper\Tests\Console\ModelsCommand\ModelHooks\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * 
 *
 * @property int $id
 * @property-read string $custom
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Simple custom($custom)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Simple newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Simple query()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Simple whereId($value)
 * @mixin \Eloquent
 */
class Simple extends Model
{
}

PHP;' '$expectedContent = <<<'"'"'PHP'"'"'
<?php

declare(strict_types=1);

namespace Barryvdh\LaravelIdeHelper\Tests\Console\ModelsCommand\ModelHooks\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * @property int $id
 * @property-read string $custom
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Simple custom($custom)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Simple newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Simple query()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Simple whereId($value)
 * @mixin \Eloquent
 */
class Simple extends Model
{
}

PHP;'
insert '$expectedContent = <<<'"'"'PHP'"'"'
<?php

declare(strict_types=1);

namespace Barryvdh\LaravelIdeHelper\Tests\Console\ModelsCommand\ModelHooks\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * @property int $id
 * @property-read string $custom
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Simple custom($custom)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Simple newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Simple query()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Simple whereId($value)
 * @mixin \Eloquent
 */
class Simple extends Model
{
}

PHP;
' 64
edit '$expectedContent = <<<'"'"'PHP'"'"'
<?php

declare(strict_types=1);

namespace Barryvdh\LaravelIdeHelper\Tests\Console\ModelsCommand\ModelHooks\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * 
 *
 * @property int $id
 * @property-read string $custom
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Simple custom($custom)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Simple newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Simple query()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Simple whereId($value)
 * @mixin \Eloquent
 */
class Simple extends Model
{
}

PHP;
        $expectedContent = <<<'"'"'PHP'"'"'
<?php

declare(strict_types=1);

namespace Barryvdh\LaravelIdeHelper\Tests\Console\ModelsCommand\ModelHooks\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * @property int $id
 * @property-read string $custom
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Simple custom($custom)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Simple newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Simple query()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Simple whereId($value)
 * @mixin \Eloquent
 */
class Simple extends Model
{
}

PHP;
        $expectedContent = <<<'"'"'PHP'"'"'
<?php

declare(strict_types=1);

namespace Barryvdh\LaravelIdeHelper\Tests\Console\ModelsCommand\ModelHooks\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * 
 *
 * @property int $id
 * @property-read string $custom
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Simple custom($custom)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Simple newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Simple query()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Simple whereId($value)
 * @mixin \Eloquent
 */
class Simple extends Model
{
}

PHP;' '$expectedContent = <<<'"'"'PHP'"'"'
<?php

declare(strict_types=1);

namespace Barryvdh\LaravelIdeHelper\Tests\Console\ModelsCommand\ModelHooks\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * @property int $id
 * @property-read string $custom
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Simple custom($custom)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Simple newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Simple query()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Simple whereId($value)
 * @mixin \Eloquent
 */
class Simple extends Model
{
}

PHP;'
composer test-ci -- -d --update-snapshots
open "tests/MacroTest.php"
edit ''"'"'/**
 * 
 *
 * @param string $foo
 * @param int $bar
 * @return string 
 * @see \Barryvdh\LaravelIdeHelper\Tests\UrlGeneratorMacroClass::__invoke()
 * @static 
 */'"'"'' ''"'"'/**
 * @param string $foo
 * @param int $bar
 * @return string
 * @see \Barryvdh\LaravelIdeHelper\Tests\UrlGeneratorMacroClass::__invoke()
 * @static
 */'"'"''
composer test-ci -- -d --update-snapshots
open "tests/MethodTest.php"
edit '$output = <<<'"'"'DOC'"'"'
/**
 * 
 *
 * @param string $last
 * @param string $first
 * @param string $middle
 * @static 
 */
DOC;' '$output = <<<'"'"'DOC'"'"'
/**
 * @param string $last
 * @param string $first
 * @param string $middle
 * @static
 */
DOC;'
composer test-ci -- -d --update-snapshots
open "tests/Console/ModelsCommand/ModelHooks/Test.php"
edit '$expectedContent = <<<'"'"'PHP'"'"'
<?php

declare(strict_types=1);

namespace Barryvdh\LaravelIdeHelper\Tests\Console\ModelsCommand\ModelHooks\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * 
 *
 * @property int $id
 * @property-read string $custom
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Simple custom($custom)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Simple newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Simple query()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Simple whereId($value)
 * @mixin \Eloquent
 */
class Simple extends Model
{
}

PHP;
        $expectedContent = <<<'"'"'PHP'"'"'
<?php

declare(strict_types=1);

namespace Barryvdh\LaravelIdeHelper\Tests\Console\ModelsCommand\ModelHooks\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * @property int $id
 * @property-read string $custom
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Simple custom($custom)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Simple newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Simple query()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Simple whereId($value)
 * @mixin \Eloquent
 */
class Simple extends Model
{
}

PHP;' '$expectedContent = <<<'"'"'PHP'"'"'
<?php

declare(strict_types=1);

namespace Barryvdh\LaravelIdeHelper\Tests\Console\ModelsCommand\ModelHooks\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * @property int $id
 * @property-read string $custom
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Simple custom($custom)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Simple newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Simple query()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Simple whereId($value)
 * @mixin \Eloquent
 */
class Simple extends Model
{
}

PHP;'

