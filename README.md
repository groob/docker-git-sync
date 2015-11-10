# docker-git-sync
Sync a git repo to a specific git revision. 
Has support for LFS

# Uage
To use the repo you must specify the following environment variables:
`GIT_SYNC_REPO` URL of git repo to sync
`GIT_SYNC_BRANCH` the branch to sync. Defaults to master
`GIT_SYNC_DEST` Destination on file system
`GIT_SYNC_REV` Sync to a specific revision. Enter a commit hash Defauts to latest commit.

```sh
docker run \
    -e GIT_SYNC_REPO=https://github.com/groob/docker-git-sync.git \
    -e GIT_SYNC_BRANCH=master \
    -e GIT_SYNC_DEST=/data \
    -e GIT_SYNC_REV=d95545407ecc1a5707111c77fe6ebae6011327f9 \
    groob/git-sync
```

# Private repos
To sync a private repo, you will first have to add the private ssh key to the container. 
To do this, you will have to create a container using the FROM directive.

```Dockerfile
FROM groob/git-sync

COPY repo-key /

RUN \
  chmod 600 /repo-key && \
  echo "IdentityFile /repo-key" >> /etc/ssh/ssh_config && \
  echo -e "StrictHostKeyChecking no" >> /etc/ssh/ssh_config
```
