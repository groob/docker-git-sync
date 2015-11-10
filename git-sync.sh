#!/bin/sh
GIT_SYNC_REPO=${GIT_SYNC_REPO:-}
GIT_SYNC_BRANCH=${GIT_SYNC_BRANCH:-}
GIT_SYNC_DEST=${GIT_SYNC_DEST:-}
GIT_SYNC_REV=${GIT_SYNC_REV:-}

# clone repo
git clone --no-checkout -b ${GIT_SYNC_BRANCH} ${GIT_SYNC_REPO} ${GIT_SYNC_DEST}
cd ${GIT_SYNC_DEST}
# fetch branch
git fetch origin ${GIT_SYNC_BRANCH}
# reset to rev
git reset --hard ${GIT_SYNC_REV}
