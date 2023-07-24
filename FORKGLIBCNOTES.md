
# public.ecr.aws/lambda/nodejs:18

```
ldd --version
ldd (GNU libc) 2.26
```

# ghcr.io/catthehacker/ubuntu:act-22.04

```
ldd --version
ldd (Ubuntu GLIBC 2.35-0ubuntu3.1) 2.35
```

# node:18-bookworm

```
ldd --version
ldd (Debian GLIBC 2.36-9) 2.36
```

# node:18-bullseye

```
ldd --version
ldd (Debian GLIBC 2.31-13+deb11u6) 2.31
```

Using (node:18-bookworm)

```
ldd bindings/node/sqlite-vss-linux-arm64/lib/vss0.so
	linux-vdso.so.1 (0x0000ffff89d09000)
	libgomp.so.1 => /lib/aarch64-linux-gnu/libgomp.so.1 (0x0000ffff898e0000)
	libblas.so.3 => not found
	liblapack.so.3 => not found
	libstdc++.so.6 => /lib/aarch64-linux-gnu/libstdc++.so.6 (0x0000ffff896c0000)
	libm.so.6 => /lib/aarch64-linux-gnu/libm.so.6 (0x0000ffff89620000)
	libgcc_s.so.1 => /lib/aarch64-linux-gnu/libgcc_s.so.1 (0x0000ffff895e0000)
	libc.so.6 => /lib/aarch64-linux-gnu/libc.so.6 (0x0000ffff89430000)
	/lib/ld-linux-aarch64.so.1 (0x0000ffff89ccc000)
```

Using (node:18-bullseye)

```
ldd bindings/node/sqlite-vss-linux-arm64/lib/vss0.so
bindings/node/sqlite-vss-linux-arm64/lib/vss0.so: /lib/aarch64-linux-gnu/libc.so.6: version `GLIBC_2.33' not found (required by bindings/node/sqlite-vss-linux-arm64/lib/vss0.so)
bindings/node/sqlite-vss-linux-arm64/lib/vss0.so: /lib/aarch64-linux-gnu/libc.so.6: version `GLIBC_2.32' not found (required by bindings/node/sqlite-vss-linux-arm64/lib/vss0.so)
bindings/node/sqlite-vss-linux-arm64/lib/vss0.so: /lib/aarch64-linux-gnu/libc.so.6: version `GLIBC_2.34' not found (required by bindings/node/sqlite-vss-linux-arm64/lib/vss0.so)
bindings/node/sqlite-vss-linux-arm64/lib/vss0.so: /usr/lib/aarch64-linux-gnu/libstdc++.so.6: version `GLIBCXX_3.4.29' not found (required by bindings/node/sqlite-vss-linux-arm64/lib/vss0.so)
bindings/node/sqlite-vss-linux-arm64/lib/vss0.so: /usr/lib/aarch64-linux-gnu/libstdc++.so.6: version `GLIBCXX_3.4.30' not found (required by bindings/node/sqlite-vss-linux-arm64/lib/vss0.so)
bindings/node/sqlite-vss-linux-arm64/lib/vss0.so: /usr/lib/aarch64-linux-gnu/libstdc++.so.6: version `CXXABI_1.3.13' not found (required by bindings/node/sqlite-vss-linux-arm64/lib/vss0.so)
	linux-vdso.so.1 (0x0000ffff87a20000)
	libgomp.so.1 => /usr/lib/aarch64-linux-gnu/libgomp.so.1 (0x0000ffff87629000)
	libblas.so.3 => not found
	liblapack.so.3 => not found
	libstdc++.so.6 => /usr/lib/aarch64-linux-gnu/libstdc++.so.6 (0x0000ffff87451000)
	libm.so.6 => /lib/aarch64-linux-gnu/libm.so.6 (0x0000ffff873a6000)
	libgcc_s.so.1 => /lib/aarch64-linux-gnu/libgcc_s.so.1 (0x0000ffff87382000)
	libc.so.6 => /lib/aarch64-linux-gnu/libc.so.6 (0x0000ffff8720e000)
	/lib/ld-linux-aarch64.so.1 (0x0000ffff879f0000)
	libdl.so.2 => /lib/aarch64-linux-gnu/libdl.so.2 (0x0000ffff871fa000)
	libpthread.so.0 => /lib/aarch64-linux-gnu/libpthread.so.0 (0x0000ffff871c9000)
```

Using (ghcr.io/catthehacker/ubuntu:act-22.04)

```
ldd node_modules/sqlite-vss-linux-arm64/lib/vss0.so
node_modules/sqlite-vss-linux-arm64/lib/vss0.so: /lib/aarch64-linux-gnu/libc.so.6: version `GLIBC_2.33' not found (required by node_modules/sqlite-vss-linux-arm64/lib/vss0.so)
node_modules/sqlite-vss-linux-arm64/lib/vss0.so: /lib/aarch64-linux-gnu/libc.so.6: version `GLIBC_2.32' not found (required by node_modules/sqlite-vss-linux-arm64/lib/vss0.so)
node_modules/sqlite-vss-linux-arm64/lib/vss0.so: /lib/aarch64-linux-gnu/libc.so.6: version `GLIBC_2.34' not found (required by node_modules/sqlite-vss-linux-arm64/lib/vss0.so)
node_modules/sqlite-vss-linux-arm64/lib/vss0.so: /usr/lib/aarch64-linux-gnu/libstdc++.so.6: version `GLIBCXX_3.4.29' not found (required by node_modules/sqlite-vss-linux-arm64/lib/vss0.so)
node_modules/sqlite-vss-linux-arm64/lib/vss0.so: /usr/lib/aarch64-linux-gnu/libstdc++.so.6: version `GLIBCXX_3.4.30' not found (required by node_modules/sqlite-vss-linux-arm64/lib/vss0.so)
node_modules/sqlite-vss-linux-arm64/lib/vss0.so: /usr/lib/aarch64-linux-gnu/libstdc++.so.6: version `CXXABI_1.3.13' not found (required by node_modules/sqlite-vss-linux-arm64/lib/vss0.so)
	linux-vdso.so.1 (0x0000ffff8bb71000)
	libgomp.so.1 => /usr/lib/aarch64-linux-gnu/libgomp.so.1 (0x0000ffff8b77a000)
	libblas.so.3 => /usr/lib/aarch64-linux-gnu/libblas.so.3 (0x0000ffff8b730000)
	liblapack.so.3 => /usr/lib/aarch64-linux-gnu/liblapack.so.3 (0x0000ffff8b1c0000)
	libstdc++.so.6 => /usr/lib/aarch64-linux-gnu/libstdc++.so.6 (0x0000ffff8afe8000)
	libm.so.6 => /lib/aarch64-linux-gnu/libm.so.6 (0x0000ffff8af3d000)
	libgcc_s.so.1 => /lib/aarch64-linux-gnu/libgcc_s.so.1 (0x0000ffff8af19000)
	libc.so.6 => /lib/aarch64-linux-gnu/libc.so.6 (0x0000ffff8ada5000)
	/lib/ld-linux-aarch64.so.1 (0x0000ffff8bb41000)
	libdl.so.2 => /lib/aarch64-linux-gnu/libdl.so.2 (0x0000ffff8ad91000)
	libpthread.so.0 => /lib/aarch64-linux-gnu/libpthread.so.0 (0x0000ffff8ad60000)
	libatlas.so.3 => /usr/lib/aarch64-linux-gnu/libatlas.so.3 (0x0000ffff8aad7000)
	libgfortran.so.5 => /usr/lib/aarch64-linux-gnu/libgfortran.so.5 (0x0000ffff8a96d000)
```

