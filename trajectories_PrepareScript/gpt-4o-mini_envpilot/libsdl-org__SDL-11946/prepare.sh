
ls -la
ls -la .github
ls -la .github/workflows
open ".github/workflows/build.yml" 1
open ".github/workflows/generic.yml" 1
open "CMakeLists.txt" 1
open "README.md" 1
open "INSTALL.md" 1
apt-get update && apt-get install -y build-essential cmake pkg-config libasound2-dev libpulse-dev libaudio-dev libx11-dev libxext-dev libxrandr-dev libxcursor-dev libxi-dev libxinerama-dev libxxf86vm-dev libxss-dev libgl1-mesa-dev libesd0-dev libdbus-1-dev libudev-dev libibus-1.0-dev fcitx-libs-dev
apt-get update && apt-get install -y build-essential cmake pkg-config libasound2-dev libpulse-dev libaudio-dev libx11-dev libxext-dev libxrandr-dev libxcursor-dev libxi-dev libxinerama-dev libxxf86vm-dev libxss-dev libgl1-mesa-dev libdbus-1-dev libudev-dev libibus-1.0-dev fcitx-libs-dev
apt-get clean && apt-get update && apt-get install -y build-essential cmake pkg-config libasound2-dev libpulse-dev libaudio-dev libx11-dev libxext-dev libxrandr-dev libxcursor-dev libxi-dev libxinerama-dev libxxf86vm-dev libxss-dev libgl1-mesa-dev libdbus-1-dev libudev-dev libibus-1.0-dev fcitx-libs-dev
apt-get autoremove && apt-get clean && apt-get update && apt-get install -y build-essential cmake pkg-config libasound2-dev libpulse-dev libaudio-dev libx11-dev libxext-dev libxrandr-dev libxcursor-dev libxi-dev libxinerama-dev libxxf86vm-dev libxss-dev libgl1-mesa-dev libdbus-1-dev libudev-dev libibus-1.0-dev fcitx-libs-dev
rm -rf /var/cache/apt/archives/* && apt-get update && apt-get install -y build-essential cmake pkg-config libasound2-dev libpulse-dev libaudio-dev libx11-dev libxext-dev libxrandr-dev libxcursor-dev libxi-dev libxinerama-dev libxxf86vm-dev libxss-dev libgl1-mesa-dev libdbus-1-dev libudev-dev libibus-1.0-dev fcitx-libs-dev
apt-get autoremove && apt-get clean
du -sh /*
ls -la /nix
du -sh /var/*
ls -la /var/log

