ls -la
ls -la .github/workflows
open ".github/workflows/gin.yml"
open "Makefile"
apt-get update && apt-get install -y golang-1.22
export PATH=$PATH:/usr/lib/go-1.22/bin && go version
make test
apt-get install -y build-essential
make test
go test -v github.com/gin-gonic/gin
open "Makefile"
go test -v github.com/gin-gonic/gin
go test -v github.com/gin-gonic/gin -coverprofile=/dev/null
go test -v -coverprofile=/dev/null github.com/gin-gonic/gin
open "github.com/gin-gonic/gin/gin_test.go"
go mod init github.com/gin-gonic/gin
go mod tidy
make test
open "Makefile"
go test -v github.com/gin-gonic/gin
go test -v github.com/gin-gonic/gin/binding
apt-get install -y tzdata
ln -sf /usr/share/zoneinfo/Asia/Chongqing /etc/localtime
go test -v github.com/gin-gonic/gin/binding
go test -v github.com/gin-gonic/gin
go test -v github.com/gin-gonic/gin/render
make test
