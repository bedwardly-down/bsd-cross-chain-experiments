#!/usr/bin/env bash

apt-get download $(apt-cache depends --recurse --no-recommends --no-suggests --no-conflicts --no-breaks --no-replaces --no-enhances $QT6_DEPS | grep "^\w" | sort -u)

apt-get download $(apt-cache depends --recurse --no-recommends --no-suggests --no-conflicts --no-breaks --no-replaces --no-enhances $QTCREATOR_DEPS | grep "^\w" | sort -u)

sudo apt-get build-dep -y qbs qtcreator

exit 0
