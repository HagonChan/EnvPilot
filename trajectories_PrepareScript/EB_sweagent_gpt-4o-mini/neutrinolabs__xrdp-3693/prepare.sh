
find_file '*.yml'
open "/testbed/.github/workflows/build.yml"
scroll_down
open "/testbed/.cirrus.yml"
apt update
apt install -y git autoconf automake libtool pkgconf opus jpeg-turbo fdk-aac pixman libX11 libXfixes libXrandr nasm fusefs-libs3 check imlib2 freetype2 cmocka
search_dir opus
search_dir jpeg
search_dir fdk-aac
search_dir pixman
search_dir libX11
search_dir libXfixes
search_dir libXrandr
search_dir nasm
search_dir check
search_dir imlib2
search_dir freetype2
apt-cache search opus
apt-cache search jpeg
apt-cache search fdk-aac
apt-cache search pixman
apt-cache search libX11
apt-cache search libXfixes
apt-cache search libXrandr
apt-cache search nasm
apt-cache search check
apt-cache search imlib2
apt-cache search freetype
apt install -y git libopus-dev libjpeg-dev libfdk-aac-dev libpixman-1-dev libx11-dev libxfixes-dev libxrandr-dev nasm check libimlib2-dev libfreetype-dev
./bootstrap
./configure
apt install -y libssl-dev
./configure
apt install -y libpam0g-dev
./configure
./configure --disable-dependency-tracking
make -j $(nproc)
apt install -y make
make -j $(nproc)
make check -j $(nproc)
apt install -y libcmocka-dev
make check -j $(nproc)
open "/testbed/tests/xrdp/Makefile"
search_file LIBS /testbed/tests/xrdp/Makefile

goto 450
edit 'CMOCKA_LIBS =' 'CMOCKA_LIBS = -lcmocka'
make check -j $(nproc)

