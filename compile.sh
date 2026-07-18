#!/bin/bash

set -e

mkdir -p tmp build

rm -f tmp/*

echo Compiling
wla-z80 -I src -o tmp/hang-on.o src/hang-on.asm

rm -f build/*

echo Linking
wlalink -d -S -b linkfile build/hang-on-japan.sms


STATUS=0
if ! sha256sum --status -c <<<"3de56be8f38d3bdf63efe08517336b67da090f9b640035f0c40b4b3fb9436812 *build/hang-on-japan.sms"; then
    echo "Checksum mismatch"
    STATUS=1
else
    echo "OK"
fi

exit $STATUS
