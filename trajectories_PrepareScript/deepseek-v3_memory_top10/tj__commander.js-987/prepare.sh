ls -la
ls -la .github/workflows
open ".travis.yml"
open "Readme.md"
find . -type f -name "*.c" -o -name "*.cpp" -o -name "*.h" -o -name "*.hpp" -o -name "CMakeLists.txt" -o -name "Makefile"

find . -type f -name "*.c" -o -name "*.cpp" -o -name "*.h" -o -name "*.hpp" -o -name "CMakeLists.txt" -o -name "Makefile"
npm install

apt-get update && apt-get install -y nodejs npm
npm install commander
npm run lint
npm test
