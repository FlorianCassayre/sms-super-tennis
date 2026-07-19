#!/bin/bash

set -e

mkdir -p tmp build

rm -f tmp/*

echo Compiling
wla-z80 -I src -o tmp/super-tennis.o src/super-tennis.asm

rm -f build/*

echo Linking
wlalink -d -S -b linkfile build/super-tennis.sms


STATUS=0
if ! sha256sum --status -c <<<"5fb097b508a482c29f12c2203a0a98a0dd7ce9873e7ef12fb7e0aeea250a99e2 *build/super-tennis.sms"; then
    echo "Checksum mismatch"
    STATUS=1
else
    echo "OK"
fi

exit $STATUS
