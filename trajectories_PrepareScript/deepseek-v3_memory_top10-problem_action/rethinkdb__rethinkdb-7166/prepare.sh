ls -la
ls -la .github/workflows
open ".github/workflows/build.yml"
sudo apt update && sudo apt install -y libc6 libcurl4 git build-essential protobuf-compiler libprotobuf-dev libcurl4-openssl-dev libncurses5-dev m4 g++ libssl-dev debhelper curl
apt update && apt install -y libc6 libcurl4 git build-essential protobuf-compiler libprotobuf-dev libcurl4-openssl-dev libncurses5-dev m4 g++ libssl-dev debhelper curl
./configure --fetch boost --fetch gtest --fetch re2 --fetch jemalloc --fetch quickjs
apt install -y python3.12 python3-pip
add-apt-repository ppa:deadsnakes/ppa -y && apt update
apt install -y software-properties-common
add-apt-repository ppa:deadsnakes/ppa -y && apt update
wget https://www.python.org/ftp/python/3.12.0/Python-3.12.0.tar.xz
apt install -y wget
wget https://www.python.org/ftp/python/3.12.0/Python-3.12.0.tar.xz
tar -xf Python-3.12.0.tar.xz
cd Python-3.12.0 && ./configure --enable-optimizations
make -j$(nproc)
make altinstall
python3.12 --version && python3.12 -m pip --version
cd /testbed
./configure --fetch boost --fetch gtest --fetch re2 --fetch jemalloc --fetch quickjs
ln -s /usr/local/bin/python3.12 /usr/local/bin/python
./configure --fetch boost --fetch gtest --fetch re2 --fetch jemalloc --fetch quickjs
make
make
mkdir -p /testbed/external/.cache && wget https://github.com/google/googletest/archive/release-1.8.1.tar.gz -O /testbed/external/.cache/release-1.8.1.tar.gz
make
test/run
cd drivers/python && python3.12 setup.py build
ls -la drivers
open "README.md"
python3.12 -m pip install rethinkdb
test/run
open "test/common/utils.py"
search_file 'def import_python_driver' test/common/utils.py
goto 170
edit 'def import_python_driver():' 'def import_python_driver():
    '"'"''"'"''"'"'return the rethinkdb Python driver, defaulting (and building) the in-source driver, but following PYTHON_DRIVER'"'"''"'"''"'"'
    global __loadedPythonDriver
    
    # -- short-circut if we already have it loaded
    
    if __loadedPythonDriver:
        return __loadedPythonDriver
    
    # --

    driverPath =  driverPaths['"'"'Python'"'"']['"'"'driverPath'"'"']
    sourcePath =  driverPaths['"'"'Python'"'"']['"'"'sourcePath'"'"']
    
    # -- short-circut if the installed driver is called for
    
    if driverPath == '"'"'--installed--'"'"' or not os.path.exists(sourcePath):
        # - load the driver
        try:
            loadedDriver = __import__('"'"'rethinkdb'"'"')
            driverPaths['"'"'Python'"'"']['"'"'driverPath'"'"'] = os.path.dirname(loadedDriver.__file__)
            os.environ['"'"'PYTHON_DRIVER'"'"'] = driverPaths['"'"'Python'"'"']['"'"'driverPath'"'"']
            return loadedDriver.r if inspect.isclass(loadedDriver) else loadedDriver
        except ImportError as e:
            raise ImportError('"'"'Unable to load system-installed `rethinkdb` module - %s'"'"' % str(e))

    # -- build the driver if that is called for
    
    if sourcePath:
        try:
            build_in_folder(sourcePath, waitNotification='"'"'Building the python drivers. This make take a few moments.'"'"')
        except test_exceptions.NotBuiltException as e:
            raise test_exceptions.NotBuiltException(detail='"'"'Failed making Python driver from: %s'"'"' % sourcePath, debugInfo=e.debugInfo)
    
    # -- validate the built driver
    
    if not all([os.path.isfile(os.path.join(driverPath, x)) for x in ['"'"'__init__.py'"'"', '"'"'ast.py'"'"']]):
        raise ValueError('"'"'Invalid Python driver: %s'"'"' % driverPath)
    
    # -- load the driver
    
    keptPaths = sys.path[:]
    driverName = os.path.basename(driverPath)
    try:
        sys.path.insert(0, os.path.dirname(driverPath))
        loadedDriver = __import__(driverName)
    finally:
        sys.path = keptPaths

    
    # -- check that it is from where we assert it to be
    
    if not loadedDriver.__file__.startswith(driverPath):
        raise ImportError('"'"'Loaded Python driver was %s, rather than the expected one from %s'"'"' % (loadedDriver.__file__, driverPath))
    
    # -- return the loaded module

    __loadedPythonDriver = loadedDriver.r
    return __loadedPythonDriver'
edit 'def import_python_driver():
    '"'"''"'"''"'"'return the rethinkdb Python driver, defaulting (and building) the in-source driver, but following PYTHON_DRIVER'"'"''"'"''"'"'
    global __loadedPythonDriver
    
    # -- short-circut if we already have it loaded
    
    if __loadedPythonDriver:
        return __loadedPythonDriver
    
    # --

    driverPath =  driverPaths['"'"'Python'"'"']['"'"'driverPath'"'"']
    sourcePath =  driverPaths['"'"'Python'"'"']['"'"'sourcePath'"'"']
    
    # -- short-circut if the installed driver is called for
    
    if driverPath == '"'"'--installed--'"'"' or not os.path.exists(sourcePath):
        # - load the driver
        try:
            loadedDriver = __import__('"'"'rethinkdb'"'"')
            driverPaths['"'"'Python'"'"']['"'"'driverPath'"'"'] = os.path.dirname(loadedDriver.__file__)
            os.environ['"'"'PYTHON_DRIVER'"'"'] = driverPaths['"'"'Python'"'"']['"'"'driverPath'"'"']
            return loadedDriver.r if inspect.isclass(loadedDriver) else loadedDriver
        except ImportError as e:
            raise ImportError('"'"'Unable to load system-installed `rethinkdb` module - %s'"'"' % str(e))

    # -- build the driver if that is called for
    
    if sourcePath:
        try:
            build_in_folder(sourcePath, waitNotification='"'"'Building the python drivers. This make take a few moments.'"'"')
        except test_exceptions.NotBuiltException as e:
            raise test_exceptions.NotBuiltException(detail='"'"'Failed making Python driver from: %s'"'"' % sourcePath, debugInfo=e.debugInfo)
    
    # -- validate the built driver
    
    if not all([os.path.isfile(os.path.join(driverPath, x)) for x in ['"'"'__init__.py'"'"', '"'"'ast.py'"'"']]):
        raise ValueError('"'"'Invalid Python driver: %s'"'"' % driverPath)
    
    # -- load the driver
    
    keptPaths = sys.path[:]
    driverName = os.path.basename(driverPath)
    try:
        sys.path.insert(0, os.path.dirname(driverPath))
        loadedDriver = __import__(driverName)
    finally:
        sys.path = keptPaths

    
    # -- check that it is from where we assert it to be
    
    if not loadedDriver.__file__.startswith(driverPath):
        raise ImportError('"'"'Loaded Python driver was %s, rather than the expected one from %s'"'"' % (loadedDriver.__file__, driverPath))
    
    # -- return the loaded module

    __loadedPythonDriver = loadedDriver.r
    return __loadedPythonDriver
    '"'"''"'"''"'"'return the rethinkdb Python driver, defaulting (and building) the in-source driver, but following PYTHON_DRIVER'"'"''"'"''"'"'
    global __loadedPythonDriver
    
    # -- short-circut if we already have it loaded
    
    if __loadedPythonDriver:
        return __loadedPythonDriver
    
    # --

    driverPath =  driverPaths['"'"'Python'"'"']['"'"'driverPath'"'"']
    sourcePath =  driverPaths['"'"'Python'"'"']['"'"'sourcePath'"'"']
    
    # -- short-circut if the installed driver is called for
    
    if driverPath == '"'"'--installed--'"'"':
        # - load the driver
        try:
            loadedDriver = __import__('"'"'rethinkdb'"'"')
            driverPaths['"'"'Python'"'"']['"'"'driverPath'"'"'] = os.path.dirname(loadedDriver.__file__)
            os.environ['"'"'PYTHON_DRIVER'"'"'] = driverPaths['"'"'Python'"'"']['"'"'driverPath'"'"']
            return loadedDriver.r if inspect.isclass(loadedDriver) else loadedDriver
        except ImportError as e:
            raise ImportError('"'"'Unable to load system-installed `rethinkdb` module - %s'"'"' % str(e))' 'def import_python_driver():
    '"'"''"'"''"'"'return the rethinkdb Python driver, defaulting (and building) the in-source driver, but following PYTHON_DRIVER'"'"''"'"''"'"'
    global __loadedPythonDriver
    
    # -- short-circut if we already have it loaded
    
    if __loadedPythonDriver:
        return __loadedPythonDriver
    
    # --

    driverPath =  driverPaths['"'"'Python'"'"']['"'"'driverPath'"'"']
    sourcePath =  driverPaths['"'"'Python'"'"']['"'"'sourcePath'"'"']
    
    # -- short-circut if the installed driver is called for
    
    if driverPath == '"'"'--installed--'"'"' or not os.path.exists(sourcePath):
        # - load the driver
        try:
            loadedDriver = __import__('"'"'rethinkdb'"'"')
            driverPaths['"'"'Python'"'"']['"'"'driverPath'"'"'] = os.path.dirname(loadedDriver.__file__)
            os.environ['"'"'PYTHON_DRIVER'"'"'] = driverPaths['"'"'Python'"'"']['"'"'driverPath'"'"']
            return loadedDriver.r if inspect.isclass(loadedDriver) else loadedDriver
        except ImportError as e:
            raise ImportError('"'"'Unable to load system-installed `rethinkdb` module - %s'"'"' % str(e))

    # -- build the driver if that is called for
    
    if sourcePath:
        try:
            build_in_folder(sourcePath, waitNotification='"'"'Building the python drivers. This make take a few moments.'"'"')
        except test_exceptions.NotBuiltException as e:
            raise test_exceptions.NotBuiltException(detail='"'"'Failed making Python driver from: %s'"'"' % sourcePath, debugInfo=e.debugInfo)
    
    # -- validate the built driver
    
    if not all([os.path.isfile(os.path.join(driverPath, x)) for x in ['"'"'__init__.py'"'"', '"'"'ast.py'"'"']]):
        raise ValueError('"'"'Invalid Python driver: %s'"'"' % driverPath)
    
    # -- load the driver
    
    keptPaths = sys.path[:]
    driverName = os.path.basename(driverPath)
    try:
        sys.path.insert(0, os.path.dirname(driverPath))
        loadedDriver = __import__(driverName)
    finally:
        sys.path = keptPaths

    
    # -- check that it is from where we assert it to be
    
    if not loadedDriver.__file__.startswith(driverPath):
        raise ImportError('"'"'Loaded Python driver was %s, rather than the expected one from %s'"'"' % (loadedDriver.__file__, driverPath))
    
    # -- return the loaded module

    __loadedPythonDriver = loadedDriver.r
    return __loadedPythonDriver'
edit '    # -- build the driver if that is called for
    
    if sourcePath:
        try:
            build_in_folder(sourcePath, waitNotification='"'"'Building the python drivers. This make take a few moments.'"'"')
        except test_exceptions.NotBuiltException as e:
            raise test_exceptions.NotBuiltException(detail='"'"'Failed making Python driver from: %s'"'"' % sourcePath, debugInfo=e.debugInfo)
    
    # -- validate the built driver
    
    if not all([os.path.isfile(os.path.join(driverPath, x)) for x in ['"'"'__init__.py'"'"', '"'"'ast.py'"'"']]):
        raise ValueError('"'"'Invalid Python driver: %s'"'"' % driverPath)
    
    # -- load the driver
    
    keptPaths = sys.path[:]
    driverName = os.path.basename(driverPath)
    try:
        sys.path.insert(0, os.path.dirname(driverPath))
        loadedDriver = __import__(driverName)
    finally:
        sys.path = keptPaths' ''
edit 'if driverPath == '"'"'--installed--'"'"':' 'if driverPath == '"'"'--installed--'"'"' or not os.path.exists(sourcePath):'
edit 'def import_python_driver():
    '"'"''"'"''"'"'return the rethinkdb Python driver, defaulting (and building) the in-source driver, but following PYTHON_DRIVER'"'"''"'"''"'"'
    global __loadedPythonDriver
    
    # -- short-circut if we already have it loaded
    
    if __loadedPythonDriver:
        return __loadedPythonDriver
    
    # --

    driverPath =  driverPaths['"'"'Python'"'"']['"'"'driverPath'"'"']
    sourcePath =  driverPaths['"'"'Python'"'"']['"'"'sourcePath'"'"']
    
    # -- short-circut if the installed driver is called for
    
    if driverPath == '"'"'--installed--'"'"' or not os.path.exists(sourcePath):
        # - load the driver
        try:
            loadedDriver = __import__('"'"'rethinkdb'"'"')
            driverPaths['"'"'Python'"'"']['"'"'driverPath'"'"'] = os.path.dirname(loadedDriver.__file__)
            os.environ['"'"'PYTHON_DRIVER'"'"'] = driverPaths['"'"'Python'"'"']['"'"'driverPath'"'"']
            return loadedDriver.r if inspect.isclass(loadedDriver) else loadedDriver
        except ImportError as e:
            raise ImportError('"'"'Unable to load system-installed `rethinkdb` module - %s'"'"' % str(e))

    # -- build the driver if that is called for
    
    if sourcePath:
        try:
            build_in_folder(sourcePath, waitNotification='"'"'Building the python drivers. This make take a few moments.'"'"')
        except test_exceptions.NotBuiltException as e:
            raise test_exceptions.NotBuiltException(detail='"'"'Failed making Python driver from: %s'"'"' % sourcePath, debugInfo=e.debugInfo)
    
    # -- validate the built driver
    
    if not all([os.path.isfile(os.path.join(driverPath, x)) for x in ['"'"'__init__.py'"'"', '"'"'ast.py'"'"']]):
        raise ValueError('"'"'Invalid Python driver: %s'"'"' % driverPath)
    
    # -- load the driver
    
    keptPaths = sys.path[:]
    driverName = os.path.basename(driverPath)
    try:
        sys.path.insert(0, os.path.dirname(driverPath))
        loadedDriver = __import__(driverName)
    finally:
        sys.path = keptPaths

    
    # -- check that it is from where we assert it to be
    
    if not loadedDriver.__file__.startswith(driverPath):
        raise ImportError('"'"'Loaded Python driver was %s, rather than the expected one from %s'"'"' % (loadedDriver.__file__, driverPath))
    
    # -- return the loaded module

    __loadedPythonDriver = loadedDriver.r
    return __loadedPythonDriver
    # -- build the driver if that is called for
    
    if sourcePath:
        try:
            build_in_folder(sourcePath, waitNotification='"'"'Building the python drivers. This make take a few moments.'"'"')
        except test_exceptions.NotBuiltException as e:
            raise test_exceptions.NotBuiltException(detail='"'"'Failed making Python driver from: %s'"'"' % sourcePath, debugInfo=e.debugInfo)
    
    # -- validate the built driver
    
    if not all([os.path.isfile(os.path.join(driverPath, x)) for x in ['"'"'__init__.py'"'"', '"'"'ast.py'"'"']]):
        raise ValueError('"'"'Invalid Python driver: %s'"'"' % driverPath)
    
    # -- load the driver
    
    keptPaths = sys.path[:]
    driverName = os.path.basename(driverPath)
    try:
        sys.path.insert(0, os.path.dirname(driverPath))
        loadedDriver = __import__(driverName)
    finally:
        sys.path = keptPaths' 'def import_python_driver():
    '"'"''"'"''"'"'return the rethinkdb Python driver, defaulting (and building) the in-source driver, but following PYTHON_DRIVER'"'"''"'"''"'"'
    global __loadedPythonDriver
    
    # -- short-circut if we already have it loaded
    
    if __loadedPythonDriver:
        return __loadedPythonDriver
    
    # --

    driverPath =  driverPaths['"'"'Python'"'"']['"'"'driverPath'"'"']
    sourcePath =  driverPaths['"'"'Python'"'"']['"'"'sourcePath'"'"']
    
    # -- short-circut if the installed driver is called for
    
    if driverPath == '"'"'--installed--'"'"' or not os.path.exists(sourcePath):
        # - load the driver
        try:
            loadedDriver = __import__('"'"'rethinkdb'"'"')
            driverPaths['"'"'Python'"'"']['"'"'driverPath'"'"'] = os.path.dirname(loadedDriver.__file__)
            os.environ['"'"'PYTHON_DRIVER'"'"'] = driverPaths['"'"'Python'"'"']['"'"'driverPath'"'"']
            return loadedDriver.r if inspect.isclass(loadedDriver) else loadedDriver
        except ImportError as e:
            raise ImportError('"'"'Unable to load system-installed `rethinkdb` module - %s'"'"' % str(e))

    # -- build the driver if that is called for
    
    if sourcePath:
        try:
            build_in_folder(sourcePath, waitNotification='"'"'Building the python drivers. This make take a few moments.'"'"')
        except test_exceptions.NotBuiltException as e:
            raise test_exceptions.NotBuiltException(detail='"'"'Failed making Python driver from: %s'"'"' % sourcePath, debugInfo=e.debugInfo)
    
    # -- validate the built driver
    
    if not all([os.path.isfile(os.path.join(driverPath, x)) for x in ['"'"'__init__.py'"'"', '"'"'ast.py'"'"']]):
        raise ValueError('"'"'Invalid Python driver: %s'"'"' % driverPath)
    
    # -- load the driver
    
    keptPaths = sys.path[:]
    driverName = os.path.basename(driverPath)
    try:
        sys.path.insert(0, os.path.dirname(driverPath))
        loadedDriver = __import__(driverName)
    finally:
        sys.path = keptPaths

    
    # -- check that it is from where we assert it to be
    
    if not loadedDriver.__file__.startswith(driverPath):
        raise ImportError('"'"'Loaded Python driver was %s, rather than the expected one from %s'"'"' % (loadedDriver.__file__, driverPath))
    
    # -- return the loaded module

    __loadedPythonDriver = loadedDriver.r
    return __loadedPythonDriver'

