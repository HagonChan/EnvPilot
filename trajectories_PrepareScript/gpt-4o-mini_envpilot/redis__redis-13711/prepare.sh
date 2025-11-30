ls -la
ls -la .github
ls -la .github/workflows
open ".github/workflows/ci.yml"
apt-get update && apt-get install -y build-essential tcl8.6 tclx
apt-get clean
apt-get update && apt-get install -y build-essential tcl8.6 tclx
apt-get autoremove -y
apt-get clean && df -h
du -ah / | sort -rh | head -n 20
nix-collect-garbage
git rev-list --objects --all | git cat-file --batch-check='%(objectsize:disk) %(rest)' | sort -n | tail -n 20
git rm --cached dump.rdb
rm dump.rdb
df -h
apt-get update && apt-get install -y libc6-dev-i386 gcc-multilib g++-multilib
du -ah /var/cache/apt/archives/ | sort -rh | head -n 20
du -sh /*
du -ah /testbed | sort -rh | head -n 20

