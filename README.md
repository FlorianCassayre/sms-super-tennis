# Super Tennis Disassembly

## Environment

You will need Docker to build the image:
```shell
./docker/run.sh
```

## Compiling

```shell
./docker/run.sh ./compile.sh
```

## Disassembly

The initial disassembly is done with this snippet:
```shell
./docker/run.sh z80dasm -g 0x0000 -a -l super-tennis.sms > src/super-tennis.asm

sed -i -E \
    -e 's/^([[:space:]]*)org([[:space:]]+)/\1.ORGA\2/' \
    -e 's/\bdefb\b/.DB/g' \
    -e 's/\bdefw\b/.DW/g' \
    -e 's/\bdefs\b/.DSB/g' \
    -e 's/\bdefm\b/.DB/g' \
    -e 's/\bequ\b/.EQU/g' \
    src/super-tennis.asm

sed -i -E "s/(\.DB[[:space:]]+)'([^']*)'/\1\"\2\"/g" src/super-tennis.asm

TMP=$(mktemp)
{
cat <<'EOF'
; --- generated header ---
.MEMORYMAP
    DEFAULTSLOT 0
    SLOTSIZE $10000
    SLOT 0 $0000
.ENDME

.ROMBANKMAP
    BANKSTOTAL 1
    BANKSIZE $10000
    BANKS 1
.ENDRO

.BANK 0 SLOT 0
; --- end generated header ---

EOF
cat src/super-tennis.asm
} > "$TMP"
mv "$TMP" src/super-tennis.asm

python3 - <<'PY'
import re

with open('src/super-tennis.asm', 'r') as f:
    text = f.read()

def repl(m):
    prefix, sign, num = m.groups()
    val = int(sign + num) - 2
    return f'{prefix}${val:+d}'

text = re.sub(
    r'(jr (?:nz,|nc,|z,|c,)?|djnz )\$([+-])(\d+)',
    repl,
    text
)

with open('src/super-tennis.asm', 'w') as f:
    f.write(text)
PY
```

You can then try to compile the disassembled file. In case of mismatch, you may inspect the differences:
```shell
cmp -l super-tennis.sms build/super-tennis.sms
```

## Acknowledgment

This project takes a lot of inspiration from a similar disassembly effort: https://github.com/lhsazevedo/akmw
