#!/bin/bash
sudo cp -rfv $DEPS_DIR/sources* /etc/apt
sudo cp -rfv $DEPS_DIR/trusted* /etc/apt

eval $(apt-config shell CACHE Dir::Cache)
eval $(apt-config shell ARCHIVES Dir::Cache::archives)
find . -type f -name "*.deb" -prune -exec sudo cp -rf '{}' /${CACHE}/${ARCHIVES}/ \;
