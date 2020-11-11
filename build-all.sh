#!/bin/bash

set -ex

rm -rf build || true
rm -rf openssl || true
rm -rf curl || true

. var-ndk.sh

./fetch.sh

./build-openssl.sh

./build-curl.sh

