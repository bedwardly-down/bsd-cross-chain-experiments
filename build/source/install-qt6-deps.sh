#!/usr/bin/env bash

# Install General Qt6 Development Libraries
sudo apt-get install -y $QT6_DEPS

sudo apt-get build-dep -y $QT6_BUILD_DEPS

exit 0
