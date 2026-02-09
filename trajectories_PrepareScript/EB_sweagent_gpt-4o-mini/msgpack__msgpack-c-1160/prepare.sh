
find_file '*.yml'
open "/testbed/.github/workflows/coverage.yml"
open "/testbed/.github/workflows/gha.yml"
open "/testbed/appveyor.yml"
find_file requirements.txt
find_file setup.py
find_file package.json
find_file Makefile
find_file tox.ini
find_file environment.yml
find_file README.md
open "/testbed/README.md"

goto 65

goto 85

insert '# Building and Installing

## Install from git repository

### Using the Terminal (CLI)

You will need:

- `gcc >= 4.1.0`
- `cmake >= 2.8.0`

How to build:

```bash
$ git clone https://github.com/msgpack/msgpack-c.git
$ cd msgpack-c
$ git checkout c_master
$ cmake .
$ make
$ make test
```

In order to run tests you must have the [GoogleTest](https://github.com/google/googletest) framework installed. If you do not currently have it, install it and re-run `cmake`.' 0

