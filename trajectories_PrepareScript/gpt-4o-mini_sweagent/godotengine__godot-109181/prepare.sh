find_file '*.yml' .
open "/testbed/.github/workflows/linux_builds.yml"
goto 100
find_file '*setup*' .
find_file 'README*' .
open "/testbed/README.md"
search_dir https://docs.godotengine.org/en/latest/contributing/development/compiling
apt-get install mesa-vulkan-drivers
apt-get update
apt-get install mesa-vulkan-drivers
dpkg -l | grep mesa-vulkan-drivers
apt-get install libwayland-bin

