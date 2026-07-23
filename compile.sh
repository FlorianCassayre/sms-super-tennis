#!/bin/bash

set -e

mkdir -p tmp build

rm -f tmp/*

echo Compiling
wla-z80 -I src -D _J -o tmp/super-tennis-japan.o src/super-tennis.asm
wla-z80 -I src -D _UE -o tmp/super-tennis-usa-europe.o src/super-tennis.asm

rm -f build/*

echo Linking
wlalink -d -S -b linkfile-japan build/super-tennis-japan.sms
wlalink -d -S -b linkfile-usa-europe build/super-tennis-usa-europe.sms


STATUS=0
if ! sha256sum --status -c <<<"459f1c453fb1e230f7ab67d607ef08bbfb630d53ef56192b5695a912b5f17c5f *build/super-tennis-japan.sms"; then
    echo "Checksum mismatch: super-tennis-japan"
    STATUS=1
else
    echo "OK: super-tennis-japan"
fi

if ! sha256sum --status -c <<<"5fb097b508a482c29f12c2203a0a98a0dd7ce9873e7ef12fb7e0aeea250a99e2 *build/super-tennis-usa-europe.sms"; then
    echo "Checksum mismatch: super-tennis-usa-europe"
    STATUS=1
else
    echo "OK: super-tennis-usa-europe"
fi

exit $STATUS
