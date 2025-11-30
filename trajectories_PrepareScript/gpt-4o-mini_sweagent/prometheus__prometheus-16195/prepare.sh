
find_file '*.yml'
open ".github/workflows/ci.yml"
scroll_down
find_file Makefile
open "/testbed/Makefile"
find_file package.json
open "/testbed/web/ui/react-app/package.json"
open "/testbed/web/ui/package.json"
go version
apt update && apt install -y golang
curl -fsSL https://deb.nodesource.com/setup_16.x | bash - && apt install -y nodejs
apt update && apt install -y nodejs --fix-missing
make
apt install -y build-essential
make
edit 'err:   "expected equal, got \"\' 'err: "expected equal, got \"' True
find_file promparse_test.go
open "/testbed/model/textparse/promparse_test.go"
edit '"expected equal, got \"\x00\" (\"INVALID\") while parsing: \"a{b\x00\"' '"expected equal, got \"\x00\" (\"INVALID\") while parsing: \"a{b\x00\"' True
edit '"expected equal, got \"\x00\" (\"INVALID\") while parsing: \"a{b\x00\"' '"expected equal, got \"\x00\" (\"INVALID\") while parsing: \"a{b\x00\"' True
edit 'expected equal, got "\x00" ("INVALID") while parsing: "a{b\x00"' 'expected equal, got "\x00" ("INVALID") while parsing: "a{b\x00"' True

