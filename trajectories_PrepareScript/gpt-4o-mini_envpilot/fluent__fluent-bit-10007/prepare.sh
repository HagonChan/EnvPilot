
find_file '*.yml' .
open "/testbed/tests/lib/shunit2/.travis.yml"
open "/testbed/lib/onigmo/appveyor.yml"
find_file Makefile .
open "/testbed/lib/onigmo/tool/Makefile"
find_file README.md .
open "/testbed/lib/onigmo/README.md"
apt-get update && apt-get install -y cmake libyaml-dev libssl-dev build-essential gcc g++
apt-get clean
apt-get update && apt-get install -y cmake libyaml-dev libssl-dev build-essential gcc g++
apt-get autoremove
apt-get clean
apt-get update && apt-get install -y cmake libyaml-dev libssl-dev build-essential gcc g++
df -h
du -sh /var/cache/apt/archives/*
du -sh /* 2>/dev/null
du -sh /testbed/* 2>/dev/null
du -sh /testbed/lib/* 2>/dev/null
rm -rf /testbed/lib/wasm-micro-runtime-WAMR-1.3.3
df -h

