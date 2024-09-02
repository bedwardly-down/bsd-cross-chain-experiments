#!/bin/bash
export LLVM_LIBS="`bash $TLD/cross/build/linux/get-llvm-static-libs.sh`"
export CC="clang"
export CXX="clang++"
export CFLAGS="$CFLAGS `llvm-config --cflags` -fexceptions -Wexceptions"
export CXXFLAGS="$CXXFLAGS `llvm-config --cxxflags` -fexceptions -Wexceptions"
export CPPFLAGS="$CPPFLAGS `llvm-config --cppflags`"
export LDFLAGS="$LDFLAGS `llvm-config --ldflags` `llvm-config --libs` -lc++abi $LLVM_LIBS"
