find_file '*.yml' .
open "/testbed/.cirrus.yml"
apt update
apt install -y cmake ninja-build binutils pkg-config curl libffmpeg-dev qt6-base qt6-svg libjansson-dev libsysinfo-dev e2fsprogs pulseaudio libasound2-dev pipewire libv4l-dev libpci-dev librist-dev libsrt-dev nlohmann-json-dev uthash-dev qrencode libwebsocketpp-dev libasio-dev vlc libswig-dev luajit libjack-dev libsndio-dev libfdk-aac-dev libdatachannel-dev
apt search libffmpeg
apt search qt6
apt search libsysinfo
apt search librist
apt search libsrt
apt search nlohmann-json
apt search libswig
apt search libdatachannel
apt install -y cmake ninja-build binutils pkg-config curl nlohmann-json3-dev libsrt1.4-gnutls-dev libsrt1.4-openssl-dev
apt install -y cmake ninja-build binutils pkg-config curl nlohmann-json3-dev libsrtp2-dev
mkdir -p build && cd build
cmake .. -G Ninja
add-apt-repository ppa:kitware/ppa
insert 'deb http://apt.kitware.com/ubuntu/ focal main
' 0
apt update
apt install -y cmake
ls /etc/apt/sources.list.d/
insert 'deb http://apt.kitware.com/ubuntu/ focal main
' 0
echo "deb http://apt.kitware.com/ubuntu/ focal main" | sudo tee /etc/apt/sources.list.d/kitware-ppa.list
echo "deb http://apt.kitware.com/ubuntu/ focal main" > /etc/apt/sources.list.d/kitware-ppa.list
apt update
curl -fsSL https://apt.kitware.com/keys/kitware-archive-latest.sh | bash
wget -qO - https://apt.kitware.com/keys/kitware-archive-latest.sh | bash
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 16FAAD7AF99A65E2
curl -s https://api.github.com/repos/Kitware/CMake/releases/latest | grep tag_name
curl -LO https://github.com/Kitware/CMake/releases/download/v4.1.2/cmake-4.1.2-linux-x86_64.tar.gz
tar -zxvf cmake-4.1.2-linux-x86_64.tar.gz
./cmake-4.1.2-linux-x86_64/bin/cmake .. -G Ninja
apt install -y g++
./cmake-4.1.2-linux-x86_64/bin/cmake .. -G Ninja
apt install -y extra-cmake-modules
./cmake-4.1.2-linux-x86_64/bin/cmake .. -G Ninja
apt install -y libavformat-dev libavutil-dev libswscale-dev libswresample-dev
./cmake-4.1.2-linux-x86_64/bin/cmake .. -G Ninja
add-apt-repository ppa:jonathonf/ffmpeg-4
echo "deb http://ppa.launchpad.net/jonathonf/ffmpeg-4/ubuntu focal main" > /etc/apt/sources.list.d/jonathonf-ffmpeg-4.list
apt update
apt install -y ffmpeg
./cmake-4.1.2-linux-x86_64/bin/cmake .. -G Ninja
curl -LO https://ffmpeg.org/releases/ffmpeg-6.1.tar.gz
tar -zxvf ffmpeg-6.1.tar.gz
cd ffmpeg-6.1 && ./configure
apt install -y nasm
./configure
make

