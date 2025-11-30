
ls -R
open "Makefile"
open "README.md"
search_file 'Building fzf' README.md
goto 253
open "BUILD.md"
make
apt update
apt install build-essential

