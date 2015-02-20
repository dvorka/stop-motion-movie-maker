#!/bin/bash

find -name temp -type d | while read I; do rm -rvf $I; done

# eof
