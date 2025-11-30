
find_file '*.yml'
open "/testbed/tests/lib/shunit2/.travis.yml"
open "/testbed/lib/jemalloc-5.2.1/.travis.yml"
open "/testbed/lib/jemalloc-5.2.1/appveyor.yml"
open "/testbed/appveyor.yml"
find_file README.md
open "/testbed/README.md"
apt-get update && apt-get install -y cmake make gcc g++ libc-dev libssl-dev zlib1g-dev flex bison qemu binfmt-support qemu-user-static qemu-utils qemu-efi-aarch64 qemu-system-arm
apt-get clean
apt-get update && apt-get install -y cmake make gcc g++ libc-dev libssl-dev zlib1g-dev flex bison qemu binfmt-support qemu-user-static qemu-utils qemu-efi-aarch64 qemu-system-arm
apt-get autoremove -y && apt-get clean
apt-get update && apt-get install -y cmake make gcc g++ libc-dev libssl-dev zlib1g-dev flex bison qemu binfmt-support qemu-user-static qemu-utils qemu-efi-aarch64 qemu-system-arm
rm -rf /etc/apt/sources.list.d/* && apt-get update
open "/etc/apt/sources.list"
edit http://mirrors.aliyun.com/ubuntu/ http://archive.ubuntu.com/ubuntu/ True
apt-get update
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 3B4FE6ACC0B21F32

