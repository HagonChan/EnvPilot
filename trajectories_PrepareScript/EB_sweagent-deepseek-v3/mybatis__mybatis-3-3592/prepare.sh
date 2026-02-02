ls -la
ls -la .github/workflows
open ".github/workflows/ci.yaml"
open "pom.xml"
java -version
apt update && apt install -y openjdk-11-jdk
apt install -y --fix-missing openjdk-11-jdk
java -version
./mvnw test --batch-mode --no-transfer-progress --show-version -D"license.skip=true"
apt install -y openjdk-17-jdk
java -version
./mvnw test --batch-mode --no-transfer-progress --show-version -D"license.skip=true"

