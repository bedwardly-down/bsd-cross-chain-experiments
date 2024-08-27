#!/usr/bin/env bash

# Download Qt5 Build Dependencies
apt-get download $(apt-cache depends --recurse --no-recommends --no-suggests --no-conflicts --no-breaks --no-replaces --no-enhances $QT5_DEPS | grep "^\w" | sort -u)

exit 0
