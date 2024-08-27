#!/bin/bash

# Combine all json objects together into a single payload here for sanity's sake
echo "$@" | jq --slurp 'map(to_entries) | flatten | group_by(.key) | map({key: .[0].key, value: map(.value) | add}) | from_entries' | jq --compact-output
