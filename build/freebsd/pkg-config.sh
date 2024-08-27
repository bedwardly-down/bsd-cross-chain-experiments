#!/bin/bash

export PKG_CONFIG_PATH=${PKG_CONFIG_PATH}
export PKG_CONFIG_LIBDIR=${PKG_CONFIG_LIBDIR}
export PKG_CONFIG_SYSROOT_DIR=${PKG_CONFIG_SYSROOT_DIR}

exec /usr/bin/pkg-config.orig "$@"
