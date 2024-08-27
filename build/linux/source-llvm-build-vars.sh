#!/bin/bash
export LLVM_LIBS="`bash $TLD/thunder/build/linux/get-llvm-static-libs.sh`"
export CC="clang"
export CXX="clang++"
export CFLAGS="$CFLAGS `llvm-config --cflags` -fexceptions"
export CXXFLAGS="$CXXFLAGS `llvm-config --cxxflags` -fexceptions"
export CPPFLAGS="$CPPFLAGS `llvm-config --cppflags`"
export LDFLAGS="$LDFLAGS `llvm-config --ldflags` `llvm-config --libs` -lc++abi $LLVM_LIBS"
