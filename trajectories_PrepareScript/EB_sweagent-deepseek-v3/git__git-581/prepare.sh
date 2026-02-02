ls -la
ls -la .github/workflows
open ".travis.yml"
open "README.md"
open "INSTALL"
ls -la ci/
ci/install-dependencies.sh
apt-get update && apt-get install -y git-lfs perforce
apt-get install -y git-lfs perforce
ci/install-dependencies.sh
ci/run-build-and-tests.sh
apt-get install -y make
ci/run-build-and-tests.sh
rm -f t/.prove && ci/run-build-and-tests.sh
apt-get install -y build-essential
ci/run-build-and-tests.sh
rm -f t/.prove && ci/run-build-and-tests.sh
apt-get install -y libssl-dev
ci/run-build-and-tests.sh
rm -f t/.prove && ci/run-build-and-tests.sh
apt-get install -y zlib1g-dev
ci/run-build-and-tests.sh
rm -f t/.prove && ci/run-build-and-tests.sh
apt-get install -y libcurl4-openssl-dev
ci/run-build-and-tests.sh
rm -f t/.prove && ci/run-build-and-tests.sh
apt-get install -y libexpat1-dev
ci/run-build-and-tests.sh
rm -f t/.prove && ci/run-build-and-tests.sh
open "Makefile"
search_file -Werror Makefile
edit 'CFLAGS =' 'CFLAGS = -Wno-error=format-overflow' True
ci/run-build-and-tests.sh
rm -f t/.prove && ci/run-build-and-tests.sh
apt-get install -y gettext
ci/run-build-and-tests.sh
rm -f t/.prove && ci/run-build-and-tests.sh
apt-get install -y subversion
ci/run-build-and-tests.sh
rm -f t/.prove && ci/run-build-and-tests.sh
open "t/t9020-remote-svn.sh"
edit 'if test -e "$GIT_BUILD_DIR/git-remote-testsvn"
then
	test_set_prereq REMOTE_SVN
fi' 'if ! test -e "$GIT_BUILD_DIR/git-remote-testsvn"
then
	skip_all='"'"'skipping remote-svn tests, git-remote-testsvn not available'"'"'
	test_done
fi

test_set_prereq REMOTE_SVN' True
edit 'if test -e "$GIT_BUILD_DIR/git-remote-testsvn"
then
	test_set_prereq REMOTE_SVN
fi' 'if ! test -e "$GIT_BUILD_DIR/git-remote-testsvn"
then
	skip_all='"'"'skipping remote-svn tests, git-remote-testsvn not available'"'"'
	test_done
fi

test_set_prereq REMOTE_SVN' True
edit 'if test -e "$GIT_BUILD_DIR/git-remote-testsvn"
then
	test_set_prereq REMOTE_SVN
fi' 'if ! test -e "$GIT_BUILD_DIR/git-remote-testsvn"
then
	skip_all='"'"'skipping remote-svn tests, git-remote-testsvn not available'"'"'
	test_done
fi

test_set_prereq REMOTE_SVN' True

