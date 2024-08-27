#!/bin/sh
export VENV="/.venv"
export PATH="$VENV/bin:$PATH"

source $VENV/bin/activate
python3 -m venv $VENV
python3 /app/main.py
