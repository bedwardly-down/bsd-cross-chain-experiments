#!/usr/bin/env bash

# Install Required General Build Libraries
sudo apt-get install -y $SHARED_DEPS

# Install Required Build Dependencies
sudo apt-get install -y $LIB_DEPS

exit 0
