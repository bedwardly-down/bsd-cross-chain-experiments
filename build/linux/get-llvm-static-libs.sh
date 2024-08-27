#!/bin/bash

find $LLVM_INSTALL_DIR/lib -not -path "*_*" -type f -name "libclang*.a" -prune -exec basename '{}' \; | cut -d "." -f1 | sed -e 's%lib%-l%' | sort | tr '\n' ' '
