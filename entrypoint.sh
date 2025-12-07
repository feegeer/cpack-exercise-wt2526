#!/bin/bash
mkdir  -p ./build && cd build && \
gzip -c -9n ../debian/cpackexample.1 > cpackexample.1.gz && \
gzip -c -9n ../debian/changelog > changelog.gz && \
cmake -DBUILD_SHARED_LIBS=ON -DCMAKE_BUILD_TYPE=Release .. && \
make package && cd .. && \
cp ./build/cpackexample_0.1.0_amd64.deb . && \
cp ./build/cpackexample-0.1.0-Linux.tar.gz . && \
rm -rf build && \
lintian ./cpackexample_0.1.0_amd64.deb
