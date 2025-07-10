#!/bin/bash

if [ "$1" = "test" ]; then
    python3 -m unittest discover tests
else
    python3 run.py
fi
