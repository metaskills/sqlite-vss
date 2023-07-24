
Using my forked repo, I setup a few things like the submodules and sqlite.

```shell
gh repo clone metaskills/sqlite-vss sqlite-vss-fork
cd sqlite-vss-fork
```

Now I dip into a GitHub Action docker container to build things.

```shell
docker run \
  --interactive --tty --rm \
  --volume "${PWD}:/var/task:delegated" \
  --entrypoint "/bin/bash" \
  --user root \
  --workdir /var/task \
  node:18-bookworm
```

From within the container, I can build things.

```shell
./scripts/forkbuild.sh
```

Doing this means I have a folder called `sqlite-vss-linux-arm64` that I can manually add to my project's `node_modules` folder.

```shell
git checkout Makefile CMakeLists.txt
```
