ls -la
ls -la .github/workflows
open ".github/workflows/build.yml"
goto 100
open "scripts/install_xrdp_build_dependencies_with_apt.sh"
sudo scripts/install_xrdp_build_dependencies_with_apt.sh max amd64 --allow-downgrades --allow-remove-essential --allow-change-held-packages
scripts/install_xrdp_build_dependencies_with_apt.sh max amd64 --allow-downgrades --allow-remove-essential --allow-change-held-packages
apt-get update && apt-get install -y autoconf automake clang gcc g++ libtool make nasm pkg-config check libcmocka-dev libpam0g-dev libssl-dev libx11-dev libxrandr-dev libxfixes-dev libfreetype-dev libfuse3-dev libjpeg-dev libmp3lame-dev libfdk-aac-dev libimlib2-dev libopus-dev libpixman-1-dev libx264-dev libopenh264-dev
./bootstrap
./configure
make -j $(nproc)
make check -j $(nproc)
