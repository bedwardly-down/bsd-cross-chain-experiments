#!/usr/bin/env bash
apt-get download $(apt-cache depends --recurse --no-recommends --no-suggests --no-conflicts --no-breaks --no-replaces --no-enhances $QT6_DEPS | grep "^\w" | sort -u)

exit 0
