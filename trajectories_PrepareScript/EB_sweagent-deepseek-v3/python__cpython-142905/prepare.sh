ls -la
ls -la .github/workflows
open ".github/workflows/build.yml"
search_file test .github/workflows/build.yml
search_file build .github/workflows/build.yml
goto 214
open ".github/workflows/reusable-ubuntu.yml"
open ".github/workflows/posix-deps-apt.sh"
sudo ./.github/workflows/posix-deps-apt.sh
./.github/workflows/posix-deps-apt.sh
./configure --with-pydebug --enable-slower-safety
make -j
./python -m test
grep -A 20 'FAILED' ./build/test_python_worker_13401/test_*.log
find ./build -name "*.log"
