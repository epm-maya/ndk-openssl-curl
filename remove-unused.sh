#!/bin/bash

set -ex

function remove_unused() {
  pushd $1
  rm -rf bin || true
  rm -rf lib/pkgconfig || true
  rm -rf lib/*.la || true
  rm -rf share || true
  popd
}

function remove_unused_all() {
  pushd $1
  remove_unused arm64-v8a
  remove_unused armeabi-v7a
  remove_unused x86
  remove_unused x86_64
  popd
}

pushd build
remove_unused_all curl
remove_unused_all openssl
popd

