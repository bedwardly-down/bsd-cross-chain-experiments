#!/usr/bin/env bash

sudo apt-get install -y $THIRDPARTY_DEPS

sudo apt-get build-dep -y $THIRDPARTY_BUILD_DEPS

exit 0
