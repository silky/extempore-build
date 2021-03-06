#!/bin/bash

set -e

ln -fs ../../../llvm/destroot/usr usr/libexec/extempore/llvm
cp stdlib.make usr/libexec/extempore

export EXT_LLVM_DIR=llvm
make -C usr/libexec/extempore -f stdlib.make core

rm usr/libexec/extempore/llvm
rm usr/libexec/extempore/stdlib.make
