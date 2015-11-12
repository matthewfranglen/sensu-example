#!/bin/bash
#
# Test if it is morning. Just demonstrates a standalone check.

if test `date +%p` = 'AM'
then
    echo "It is morning"
    exit 0
else
    echo "It is not morning" >&2
    exit 1
fi
