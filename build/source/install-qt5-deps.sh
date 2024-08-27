#!/usr/bin/env bash

# Install General Qt5 Development Libraries
sudo apt-get install -y $QT5_DEPS

sudo apt-get build-dep -y $QT5_BUILD_DEPS

exit 0
