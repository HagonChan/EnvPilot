ls -la
ls -la .github/workflows
open ".github/workflows/tests.yml"
apt update && apt install -y php7.4 php7.4-xdebug composer
apt update && apt install -y php8.1 php8.1-xdebug composer
php -v && composer --version
composer install
composer config -g repo.packagist composer http://repo.packagist.org && composer install
apt install -y php8.1-curl && composer install
composer config -g secure-http false && composer install
apt install -y php8.1-xml php8.1-dom && composer install
./vendor/bin/phpunit
open "tests/Mocks/SlowPokeStream.php"
edit 'public function close()
    {' 'public function close(): void
    {'
ls -la tests/Mocks/SlowPokeStream.php
chmod +w tests/Mocks/SlowPokeStream.php
edit 'public function close()
    {' 'public function close(): void
    {'
ls -la tests/Mocks/SlowPokeStream.php
chown $(whoami) tests/Mocks/SlowPokeStream.php
edit 'public function close()
    {' 'public function close(): void
    {'
chmod u+w tests/Mocks/SlowPokeStream.php
edit 'public function close()
    {' 'public function close(): void
    {'
cp tests/Mocks/SlowPokeStream.php tests/Mocks/SlowPokeStream.php.bak
cat tests/Mocks/SlowPokeStream.php

echo '<?php

/**
 * Slim Framework (https://slimframework.com)
 *
 * @license https://github.com/slimphp/Slim/blob/4.x/LICENSE.md (MIT License)
 */

declare(strict_types=1);

namespace Slim\Tests\Mocks;

use Exception;
use Psr\Http\Message\StreamInterface;

use function min;
use function str_repeat;
use function usleep;

use const SEEK_SET;

class SlowPokeStream implements StreamInterface
{
    public const CHUNK_SIZE = 1;
    public const SIZE = 500;

    /**
     * @var int
     */
    private $amountToRead;

    public function __construct()
    {
        $this->amountToRead = self::SIZE;
    }

    public function __toString()
    {
        $content = '';
        while (!$this->eof()) {
            $content .= $this->read(self::CHUNK_SIZE);
        }
        return $content;
    }

    public function close(): void
    {
    }

    public function detach()
    {
        throw new Exception(''not implemented'');
    }

    public function eof()
    {
        return $this->amountToRead === 0;
    }

    public function getContents()
    {
        throw new Exception(''not implemented'');
    }

    public function getMetadata($key = null)
    {
        throw new Exception(''not implemented'');
    }

    public function getSize()
    {
        return null;
    }

    public function isReadable()
    {
        return true;
    }

    public function isSeekable()
    {
        return false;
    }

    public function isWritable()
    {
        return false;
    }

    public function read($length)
    {
        usleep(1);
        $size = min($this->amountToRead, self::CHUNK_SIZE, $length);
        $this->amountToRead -= $size;
        return str_repeat(''.'', $size);
    }

    public function rewind()
    {
        throw new Exception(''not implemented'');
    }

    public function seek($offset, $whence = SEEK_SET)
    {
        throw new Exception(''not implemented'');
    }

    public function tell()
    {
        throw new Exception(''not implemented'');
    }

    public function write($string)
    {
        return $string;
    }
}' > tests/Mocks/SlowPokeStream.php
./vendor/bin/phpunit
open "tests/Mocks/SmallChunksStream.php"
edit 'public function close()
    {' 'public function close(): void
    {'
chmod u+w tests/Mocks/SmallChunksStream.php
edit 'public function close()
    {' 'public function close(): void
    {'
echo '<?php

/**
 * Slim Framework (https://slimframework.com)
 *
 * @license https://github.com/slimphp/Slim/blob/4.x/LICENSE.md (MIT License)
 */

declare(strict_types=1);

namespace Slim\Tests\Mocks;

use Exception;
use Psr\Http\Message\StreamInterface;

use function min;
use function str_repeat;

use const SEEK_SET;

class SmallChunksStream implements StreamInterface
{
    public const CHUNK_SIZE = 10;
    public const SIZE = 40;

    /**
     * @var int
     */
    private $amountToRead;

    public function __construct()
    {
        $this->amountToRead = self::SIZE;
    }

    public function __toString()
    {
        return str_repeat(''.'', self::SIZE);
    }

    public function close(): void
    {
    }

    public function detach()
    {
        throw new Exception(''not implemented'');
    }

    public function eof()
    {
        return $this->amountToRead === 0;
    }

    public function getContents()
    {
        throw new Exception(''not implemented'');
    }

    public function getMetadata($key = null)
    {
        throw new Exception(''not implemented'');
    }

    public function getSize()
    {
        return self::SIZE;
    }

    public function isReadable()
    {
        return true;
    }

    public function isSeekable()
    {
        return false;
    }

    public function isWritable()
    {
        return false;
    }

    public function read($length)
    {
        $size = min($this->amountToRead, self::CHUNK_SIZE, $length);
        $this->amountToRead -= $size;

        return str_repeat(''.'', min($length, $size));
    }

    public function rewind()
    {
        throw new Exception(''not implemented'');
    }

    public function seek($offset, $whence = SEEK_SET)
    {
        throw new Exception(''not implemented'');
    }

    public function tell()
    {
        throw new Exception(''not implemented'');
    }

    public function write($string)
    {
        return $string;
    }
}' > tests/Mocks/SmallChunksStream.php
./vendor/bin/phpunit
open "tests/Mocks/SlowPokeStream.php"
edit 'public function write($string)
    {
        return $string;
    }' 'public function write($string): int
    {
        return strlen($string);
    }'
chmod u+w tests/Mocks/SlowPokeStream.php
edit 'public function write($string)
    {
        return $string;
    }' 'public function write($string): int
    {
        return strlen($string);
    }'
echo '<?php

/**
 * Slim Framework (https://slimframework.com)
 *
 * @license https://github.com/slimphp/Slim/blob/4.x/LICENSE.md (MIT License)
 */

declare(strict_types=1);

namespace Slim\Tests\Mocks;

use Exception;
use Psr\Http\Message\StreamInterface;

use function min;
use function str_repeat;
use function usleep;
use function strlen;

use const SEEK_SET;

class SlowPokeStream implements StreamInterface
{
    public const CHUNK_SIZE = 1;
    public const SIZE = 500;

    /**
     * @var int
     */
    private $amountToRead;

    public function __construct()
    {
        $this->amountToRead = self::SIZE;
    }

    public function __toString()
    {
        $content = '''';
        while (!$this->eof()) {
            $content .= $this->read(self::CHUNK_SIZE);
        }
        return $content;
    }

    public function close(): void
    {
    }

    public function detach()
    {
        throw new Exception(''not implemented'');
    }

    public function eof()
    {
        return $this->amountToRead === 0;
    }

    public function getContents()
    {
        throw new Exception(''not implemented'');
    }

    public function getMetadata($key = null)
    {
        throw new Exception(''not implemented'');
    }

    public function getSize()
    {
        return null;
    }

    public function isReadable()
    {
        return true;
    }

    public function isSeekable()
    {
        return false;
    }

    public function isWritable()
    {
        return false;
    }

    public function read($length)
    {
        usleep(1);
        $size = min($this->amountToRead, self::CHUNK_SIZE, $length);
        $this->amountToRead -= $size;
        return str_repeat(''.'', $size);
    }

    public function rewind()
    {
        throw new Exception(''not implemented'');
    }

    public function seek($offset, $whence = SEEK_SET)
    {
        throw new Exception(''not implemented'');
    }

    public function tell()
    {
        throw new Exception(''not implemented'');
    }

    public function write($string): int
    {
        return strlen($string);
    }
}' > tests/Mocks/SlowPokeStream.php
./vendor/bin/phpunit
open "tests/Mocks/SmallChunksStream.php"
edit 'public function write($string)
    {
        return $string;
    }' 'public function write($string): int
    {
        return strlen($string);
    }'
echo '<?php

/**
 * Slim Framework (https://slimframework.com)
 *
 * @license https://github.com/slimphp/Slim/blob/4.x/LICENSE.md (MIT License)
 */

declare(strict_types=1);

namespace Slim\Tests\Mocks;

use Exception;
use Psr\Http\Message\StreamInterface;

use function min;
use function str_repeat;
use function strlen;

use const SEEK_SET;

class SmallChunksStream implements StreamInterface
{
    public const CHUNK_SIZE = 10;
    public const SIZE = 40;

    /**
     * @var int
     */
    private $amountToRead;

    public function __construct()
    {
        $this->amountToRead = self::SIZE;
    }

    public function __toString()
    {
        return str_repeat(''.'', self::SIZE);
    }

    public function close(): void
    {
    }

    public function detach()
    {
        throw new Exception(''not implemented'');
    }

    public function eof()
    {
        return $this->amountToRead === 0;
    }

    public function getContents()
    {
        throw new Exception(''not implemented'');
    }

    public function getMetadata($key = null)
    {
        throw new Exception(''not implemented'');
    }

    public function getSize()
    {
        return self::SIZE;
    }

    public function isReadable()
    {
        return true;
    }

    public function isSeekable()
    {
        return false;
    }

    public function isWritable()
    {
        return false;
    }

    public function read($length)
    {
        $size = min($this->amountToRead, self::CHUNK_SIZE, $length);
        $this->amountToRead -= $size;

        return str_repeat(''.'', min($length, $size));
    }

    public function rewind()
    {
        throw new Exception(''not implemented'');
    }

    public function seek($offset, $whence = SEEK_SET)
    {
        throw new Exception(''not implemented'');
    }

    public function tell()
    {
        throw new Exception(''not implemented'');
    }

    public function write($string): int
    {
        return strlen($string);
    }
}' > tests/Mocks/SmallChunksStream.php
./vendor/bin/phpunit
open "tests/Mocks/SlowPokeStream.php"
edit 'public function write($string): int
    {
        return strlen($string);
    }' 'public function write($string): int
    {
        return strlen($string);
    }'
echo '<?php

/**
 * Slim Framework (https://slimframework.com)
 *
 * @license https://github.com/slimphp/Slim/blob/4.x/LICENSE.md (MIT License)
 */

declare(strict_types=1);

namespace Slim\Tests\Mocks;

use Exception;
use Psr\Http\Message\StreamInterface;

use function min;
use function str_repeat;
use function usleep;
use function strlen;

use const SEEK_SET;

class SlowPokeStream implements StreamInterface
{
    public const CHUNK_SIZE = 1;
    public const SIZE = 500;

    /**
     * @var int
     */
    private $amountToRead;

    public function __construct()
    {
        $this->amountToRead = self::SIZE;
    }

    public function __toString()
    {
        $content = '''';
        while (!$this->eof()) {
            $content .= $this->read(self::CHUNK_SIZE);
        }
        return $content;
    }

    public function close(): void
    {
    }

    public function detach()
    {
        throw new Exception(''not implemented'');
    }

    public function eof()
    {
        return $this->amountToRead === 0;
    }

    public function getContents()
    {
        throw new Exception(''not implemented'');
    }

    public function getMetadata($key = null)
    {
        throw new Exception(''not implemented'');
    }

    public function getSize()
    {
        return null;
    }

    public function isReadable()
    {
        return true;
    }

    public function isSeekable()
    {
        return false;
    }

    public function isWritable()
    {
        return false;
    }

    public function read($length)
    {
        usleep(1);
        $size = min($this->amountToRead, self::CHUNK_SIZE, $length);
        $this->amountToRead -= $size;
        return str_repeat(''.'', $size);
    }

    public function rewind()
    {
        throw new Exception(''not implemented'');
    }

    public function seek($offset, $whence = SEEK_SET)
    {
        throw new Exception(''not implemented'');
    }

    public function tell()
    {
        throw new Exception(''not implemented'');
    }

    public function write($string): int
    {
        return strlen($string);
    }
}' > tests/Mocks/SlowPokeStream.php
./vendor/bin/phpunit
open "tests/Mocks/SmallChunksStream.php"
edit 'public function write($string): int
    {
        return strlen($string);
    }' 'public function write($string): int
    {
        return strlen($string);
    }'

