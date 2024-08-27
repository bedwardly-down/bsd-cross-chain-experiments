#!/bin/bash
apt-get download $(apt-cache depends --recurse --no-recommends --no-suggests --no-conflicts --no-breaks --no-replaces --no-enhances $THIRDPARTY_DEPS | grep "^\w" | sort -u)
