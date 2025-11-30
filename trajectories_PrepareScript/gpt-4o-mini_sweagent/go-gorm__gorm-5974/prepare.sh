
ls -R
ls .github/workflows/*.yml .github/workflows/*.yaml
open ".github/workflows/tests.yml"
open "tests/tests_all.sh"
go version
wget https://dl.google.com/go/go1.19.linux-amd64.tar.gz
curl -O https://dl.google.com/go/go1.19.linux-amd64.tar.gz
ls README.*
open "README.md"
create installation_steps.txt
insert '1. Download Go Binary:
   - Visit the Go official download page to obtain the latest version of the Go binary for Linux.
   - Download the binary go1.19.linux-amd64.tar.gz.

2. Extract Go:
   - Move the downloaded archive to /usr/local/.
   - Extract using the command: tar -C /usr/local/ -xzf go1.19.linux-amd64.tar.gz.

3. Set Environment Variables:
   - Add the Go binary path to your system PATH. You can achieve this by adding the following lines to your profile file (e.g., ~/.bash_profile, ~/.bashrc, or ~/.profile):
     ```bash
     export PATH=$PATH:/usr/local/go/bin
     ```
   - Reload your profile by running: source ~/.bash_profile (or the respective file where you added the path).

4. Verify Installation:
   - Check the installed version with: go version.

5. Run Tests:
   - After Go is installed and configured, navigate to the repository and run the test script using:
     ```bash
     GITHUB_ACTION=true GORM_DIALECT=sqlite ./tests/tests_all.sh
     ```
' 1
