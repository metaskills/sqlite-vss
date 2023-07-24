#!/bin/bash
set -e

apt-get update -y 

apt-get install -y \
  libgomp1 \
  libatlas-base-dev \
  liblapack-dev \
  libsqlite3-dev \
  cmake \
  gettext-base

rm -rf ./build ./build_release ./vendor/sqlite

./vendor/get_sqlite.sh

pushd vendor/sqlite
./configure && make

popd
sed -i 's/faiss_avx2/faiss/g' CMakeLists.txt
sed -i 's/libfaiss_avx2/libfaiss/g' Makefile
make loadable-release static-release npm
