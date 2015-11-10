#!/bin/sh
GIT_SYNC_REPO=${GIT_SYNC_REPO:-}
GIT_SYNC_BRANCH=${GIT_SYNC_BRANCH:-}
GIT_SYNC_DEST=${GIT_SYNC_DEST:-}
GIT_SYNC_REV=${GIT_SYNC_REV:-}

// clone repo
git clone --no-checkout -b ${GIT_SYNC_BRANCH} ${GIT_SYNC_REPO} ${GIT_SYNC_DEST}
cd ${GIT_SYNC_DEST}
git fetch origin ${GIT_SYNC_BRANCH}
git reset --hard ${GIT_SYNC_REV}

root@dev:~/git-lfs# vim cat^C
root@dev:~/git-lfs# cat sync.sh
#!/bin/sh
GIT_SYNC_REPO=${GIT_SYNC_REPO:-}
GIT_SYNC_BRANCH=${GIT_SYNC_BRANCH:-}
GIT_SYNC_DEST=${GIT_SYNC_DEST:-}
GIT_SYNC_DEST=${GIT_SYNC_REV:-}

// clone repo
git clone --no-checkout -b ${GIT_SYNC_BRANCH} ${GIT_SYNC_REPO} ${GIT_SYNC_DEST}
cd ${GIT_SYNC_DEST}
git fetch origin ${GIT_SYNC_BRANCH}
git reset --hard ${GIT_SYNC_REV}
