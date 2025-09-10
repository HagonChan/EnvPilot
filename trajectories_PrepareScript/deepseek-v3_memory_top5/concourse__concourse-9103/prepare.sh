ls -la
ls -la .github/workflows
open "go.mod"
go version
wget https://go.dev/dl/go1.24.0.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.24.0.linux-amd64.tar.gz && export PATH=/usr/local/go/bin:$PATH
curl -OL https://go.dev/dl/go1.24.0.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.24.0.linux-amd64.tar.gz && export PATH=/usr/local/go/bin:$PATH
apt-get update && apt-get install -y curl
curl -OL https://go.dev/dl/go1.24.0.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.24.0.linux-amd64.tar.gz && export PATH=/usr/local/go/bin:$PATH
go version
go mod download
go test -race ./...
CGO_ENABLED=1 go test -race ./...
apt-get install -y gcc
CGO_ENABLED=1 go test -race ./...
apt-get install -y iptables containerd
CGO_ENABLED=1 go test -race ./...
iptables -L
update-alternatives --set iptables /usr/sbin/iptables-legacy && update-alternatives --set ip6tables /usr/sbin/ip6tables-legacy
CGO_ENABLED=1 go test -race ./...
lsmod | grep iptable
apt-get install -y kmod
lsmod | grep iptable
modprobe iptable_filter ip_tables
uname -r
apt-get install -y linux-headers-$(uname -r)
modprobe iptable_filter ip_tables
apt-get install -y nftables
nft list ruleset
systemctl status nftables
nft -f /etc/nftables.conf
cat /proc/sys/net/netfilter/nf_conntrack_max
modprobe iptable_filter ip_tables
find_file info_test.go atc/api
open "atc/api/info_test.go"
goto 79
goto 129
edit 'BeforeEach(func() {
				mockService.stubGetParameter = func(input *awsssm.GetParameterInput) (*awsssm.GetParameterOutput, error) {
					return nil, errors.New("some error occured")
				}
			})' 'BeforeEach(func() {
				mockService.stubGetParameter = func(input *awsssm.GetParameterInput) (*awsssm.GetParameterOutput, error) {
					fmt.Println("Mock SSM GetParameter invoked with input:", input)
					return nil, errors.New("some error occured")
				}
			})'
edit 'BeforeEach(func() {
				mockService.stubGetParameter = func(input *awsssm.GetParameterInput) (*awsssm.GetParameterOutput, error) {
					return nil, errors.New("some error occured")
				}
			})' 'BeforeEach(func() {
				mockService.stubGetParameter = func(input *awsssm.GetParameterInput) (*awsssm.GetParameterOutput, error) {
					fmt.Println("Mock SSM GetParameter invoked with input:", input)
					return nil, errors.New("some error occured")
				}
			})'
edit 'BeforeEach(func() {
				mockService.stubGetParameter = func(input *awsssm.GetParameterInput) (*awsssm.GetParameterOutput, error) {
					return nil, errors.New("some error occured")
				}
			})' 'BeforeEach(func() {
				mockService.stubGetParameter = func(input *awsssm.GetParameterInput) (*awsssm.GetParameterOutput, error) {
					fmt.Println("Mock SSM GetParameter invoked with input:", input)
					return nil, errors.New("some error occured")
				}
			})'

