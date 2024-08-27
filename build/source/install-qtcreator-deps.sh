#!/usr/bin/env bash

# Install QtCreator Dependencies
sudo apt-get install -y $QT6_DEPS

sudo apt-get install -y $QTCREATOR_DEPS 

sudo apt-get build-dep -y $QTCREATOR_BUILD_DEPS

exit 0
