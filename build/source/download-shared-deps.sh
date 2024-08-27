#!/usr/bin/env bash

# Download Required General Build Libraries
apt-get download $(apt-cache depends --recurse --no-recommends --no-suggests --no-conflicts --no-breaks --no-replaces --no-enhances $SHARED_DEPS | grep "^\w" | sort -u)

# Download Required Dependency Libraries
apt-get download $(apt-cache depends --recurse --no-recommends --no-suggests --no-conflicts --no-breaks --no-replaces --no-enhances $LIB_DEPS | grep "^\w" | sort -u)

exit 0
