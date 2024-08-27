#!/bin/bash

# This fixes problematic paths so that they conform to FreeBSD's structure before being passed to Qmake
export GSTREAMER_INCDIR="${GSTREAMER_INCDIR//-I//}"
export HARFBUZZ_INCDIR="${HARFBUZZ_INCDIR//-I//}"
export LLVM_LDFLAGS="${LLVM_LDFLAGS//llvm-/llvm/}"
export LLVM_LDFLAGS="${LLVM_LDFLAGS//-L/-LSYS/}"
