ls -la
ls -la .github/workflows
open ".github/workflows/main.yml"
sudo apt update && sudo apt install -y gettext libpcre2-dev python3-pip tmux g++-multilib clang llvm-symbolizer build-essential
apt update && apt install -y gettext libpcre2-dev python3-pip tmux g++-multilib clang llvm-symbolizer build-essential
pip3 install pexpect
apt install -y python3-pip
pip3 install pexpect
locale-gen fr_FR.UTF-8
dpkg-reconfigure locales
apt install -y locales
locale-gen fr_FR.UTF-8
mkdir -p build && cd build && cmake .. -DCMAKE_BUILD_TYPE=Release -DBUILD_TESTING=ON
apt install -y cmake
cmake .. -DCMAKE_BUILD_TYPE=Release -DBUILD_TESTING=ON
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
apt install -y curl
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
source $HOME/.cargo/env && rustc --version && cargo --version
cmake .. -DCMAKE_BUILD_TYPE=Release -DBUILD_TESTING=ON
make
make test
ctest -V -R cd.fish
ctest -V -R path.fish
ctest -V -R generic.py
open "tests/checks/cd.fish"
ctest -V -R cd.fish --output-on-failure
mkdir -p /tmp/bad-perms && chmod 000 /tmp/bad-perms && ctest -V -R cd.fish --output-on-failure
open "tests/checks/cd.fish"
edit '# Create a test directory to store our stuff.' '# Create a test directory to store our stuff.
# Explicitly create a directory with restricted permissions for the test.
mkdir -p $base/bad-perms
chmod 000 $base/bad-perms'
ctest -V -R cd.fish --output-on-failure
open "tests/checks/cd.fish"
edit '# macOS likes to return symlinks from (mktemp -d), make sure it does not.
set -l base (realpath (mktemp -d))' '# macOS likes to return symlinks from (mktemp -d), make sure it does not.
set -l base (realpath (mktemp -d))
# Explicitly create a directory with restricted permissions for the test.
mkdir -p $base/bad-perms
chmod 000 $base/bad-perms'
edit '# Create a test directory to store our stuff.
# Explicitly create a directory with restricted permissions for the test.
mkdir -p $base/bad-perms
chmod 000 $base/bad-perms
# macOS likes to return symlinks from (mktemp -d), make sure it does not.
set -l base (realpath (mktemp -d))
# Explicitly create a directory with restricted permissions for the test.
mkdir -p $base/bad-perms
chmod 000 $base/bad-perms' '# Create a test directory to store our stuff.
# macOS likes to return symlinks from (mktemp -d), make sure it does not.
set -l base (realpath (mktemp -d))
# Explicitly create a directory with restricted permissions for the test.
mkdir -p $base/bad-perms
chmod 000 $base/bad-perms'
ctest -V -R cd.fish --output-on-failure
open "tests/checks/cd.fish"
edit '# Expect no output on success.

# Create a symlink and verify logical completion.' '# Expect no output on success.

# Test cd into a directory with restricted permissions.
cd $base/bad-perms
#CHECKERR: cd: Permission denied: '"'"'bad-perms'"'"'

# Create a symlink and verify logical completion.'
ctest -V -R cd.fish --output-on-failure
open "tests/checks/cd.fish"
edit '# Test cd into a directory with restricted permissions.
cd $base/bad-perms
#CHECKERR: cd: Permission denied: '"'"'bad-perms'"'"'' '# Test cd into a directory with restricted permissions.
echo "Debug: Checking bad-perms directory at $base/bad-perms"
ls -ld $base/bad-perms
cd $base/bad-perms
#CHECKERR: cd: Permission denied: '"'"'bad-perms'"'"''
ctest -V -R cd.fish --output-on-failure
edit '# Test cd into a directory with restricted permissions.
echo "Debug: Checking bad-perms directory at $base/bad-perms"
ls -ld $base/bad-perms
cd $base/bad-perms
#CHECKERR: cd: Permission denied: '"'"'bad-perms'"'"'' '# Test cd into a directory with restricted permissions.
echo "Debug: Checking bad-perms directory at $base/bad-perms"
ls -ld $base/bad-perms
cd $base/bad-perms
#CHECKERR: cd: Permission denied: '"'"'{{.*}}/bad-perms'"'"''
ctest -V -R cd.fish --output-on-failure
edit '# Test cd into a directory with restricted permissions.
echo "Debug: Checking bad-perms directory at $base/bad-perms"
ls -ld $base/bad-perms
cd $base/bad-perms
#CHECKERR: cd: Permission denied: '"'"'{{.*}}/bad-perms'"'"'' '# Test cd into a directory with restricted permissions.
echo "Debug: Checking bad-perms directory at $base/bad-perms"
ls -ld $base/bad-perms
cd $base/bad-perms
#CHECKERR: cd: Permission denied: '"'"'{{.*}}/bad-perms'"'"'
# Ensure the test does not proceed if the above fails.
exit 1'
ctest -V -R cd.fish --output-on-failure
edit '# Test cd into a directory with restricted permissions.
echo "Debug: Checking bad-perms directory at $base/bad-perms"
ls -ld $base/bad-perms
cd $base/bad-perms
#CHECKERR: cd: Permission denied: '"'"'{{.*}}/bad-perms'"'"'
# Ensure the test does not proceed if the above fails.
exit 1' '# Test cd into a directory with restricted permissions.
echo "Debug: Checking bad-perms directory at $base/bad-perms"
ls -ld $base/bad-perms
cd $base/bad-perms
#CHECKERR: cd: Permission denied: '"'"'{{.*}}/bad-perms'"'"''
ctest -V -R cd.fish --output-on-failure
edit '# Test cd into a directory with restricted permissions.
echo "Debug: Checking bad-perms directory at $base/bad-perms"
ls -ld $base/bad-perms
cd $base/bad-perms
#CHECKERR: cd: Permission denied: '"'"'{{.*}}/bad-perms'"'"'' '# Test cd into a directory with restricted permissions.
echo "Debug: Checking bad-perms directory at $base/bad-perms"
ls -ld $base/bad-perms
cd $base/bad-perms
#CHECKERR: cd: The directory '"'"'nonexistent'"'"' does not exist'
edit '# Test cd into a directory with restricted permissions.
echo "Debug: Checking bad-perms directory at $base/bad-perms"
ls -ld $base/bad-perms
cd $base/bad-perms
#CHECKERR: cd: The directory '"'"'nonexistent'"'"' does not exist' '# Test cd into a directory with restricted permissions.
echo "Debug: Checking bad-perms directory at $base/bad-perms"
ls -ld $base/bad-perms
cd $base/bad-perms
#CHECKERR: cd: Permission denied: '"'"'{{.*}}/bad-perms'"'"''

