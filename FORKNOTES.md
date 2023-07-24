
Using my forked repo, I setup a few things like the submodules and sqlite.

```shell
cd sqlite-vss-fork
git submodule update --init --recursive
```

Now I dip into a GitHub Action docker container to build things.

```shell
docker run \
  --interactive --tty --rm \
  --volume "${PWD}:/var/task:delegated" \
  --entrypoint "/bin/bash" \
  --user root \
  --workdir /var/task \
  ghcr.io/catthehacker/ubuntu:act-22.04
```

From within the container, I can build things.

```shell
./scripts/forkbuild.sh
git checkout Makefile CMakeLists.txt
```

So what do I have and what do I need? Other NPM packages suggest only the vector0.so and vss0.so files are needed.

```shell
ls -lAGp dist/release
total 13144
-rw-r--r-- 1 root 7927852 Jul 24 13:44 libfaiss.a
-rw-r--r-- 1 root  284582 Jul 24 13:44 libsqlite_vector0.a
-rw-r--r-- 1 root   81920 Jul 24 13:44 libsqlite_vss0.a
-rw-r--r-- 1 root     705 Jul 24 13:44 sqlite-vector.h
-rw-r--r-- 1 root     628 Jul 24 13:44 sqlite-vss.h
-rwxr-xr-x 1 root  182608 Jul 24 13:44 vector0.so
-rwxr-xr-x 1 root 4291952 Jul 24 13:44 vss0.so

ldd dist/release/vector0.so 
	linux-vdso.so.1 (0x0000ffffa5fe2000)
	libstdc++.so.6 => /lib/aarch64-linux-gnu/libstdc++.so.6 (0x0000ffffa5d40000)
	libgcc_s.so.1 => /lib/aarch64-linux-gnu/libgcc_s.so.1 (0x0000ffffa5d10000)
	libc.so.6 => /lib/aarch64-linux-gnu/libc.so.6 (0x0000ffffa5b60000)
	/lib/ld-linux-aarch64.so.1 (0x0000ffffa5fa9000)
	libm.so.6 => /lib/aarch64-linux-gnu/libm.so.6 (0x0000ffffa5ac0000)

ldd dist/release/vss0.so    
	linux-vdso.so.1 (0x0000ffffb2e44000)
	libgomp.so.1 => /lib/aarch64-linux-gnu/libgomp.so.1 (0x0000ffffb2a30000)
	libblas.so.3 => /lib/aarch64-linux-gnu/libblas.so.3 (0x0000ffffb29e0000)
	liblapack.so.3 => /lib/aarch64-linux-gnu/liblapack.so.3 (0x0000ffffb2470000)
	libstdc++.so.6 => /lib/aarch64-linux-gnu/libstdc++.so.6 (0x0000ffffb2240000)
	libm.so.6 => /lib/aarch64-linux-gnu/libm.so.6 (0x0000ffffb21a0000)
	libgcc_s.so.1 => /lib/aarch64-linux-gnu/libgcc_s.so.1 (0x0000ffffb2170000)
	libc.so.6 => /lib/aarch64-linux-gnu/libc.so.6 (0x0000ffffb1fc0000)
	/lib/ld-linux-aarch64.so.1 (0x0000ffffb2e0b000)
	libatlas.so.3 => /lib/aarch64-linux-gnu/libatlas.so.3 (0x0000ffffb1d40000)
	libgfortran.so.5 => /lib/aarch64-linux-gnu/libgfortran.so.5 (0x0000ffffb1bb0000)
```

Doing this means I have a folder called `sqlite-vss-linux-arm64` that I can manually add to my project's `node_modules` folder.

```shell
cp dist/release/*.so bindings/node/sqlite-vss-linux-arm64/lib/
```
