#!/bin/bash

# Grab the value tied to key <$2>; Also, trim off any '\' characters due to raw-input from Github Actions
echo "$1" | jq '.' | jq --raw-output "$2"
