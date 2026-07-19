import re

FILE = 'src/super-tennis.asm'

data = open('super-tennis.sms', 'rb').read()
lines = open(FILE).read().splitlines()

locations = []
for i, line in enumerate(lines):
    m = re.search(r';([0-9a-fA-F]{4})$', line)
    if m:
        locations.append((i, int(m.group(1), 16)))

result = []
for line in lines:
    m = re.search(r';([0-9a-fA-F]{4})$', line)
    if not m or line.strip().startswith('.DB'):
        result.append(line)
        continue

    addr = int(m.group(1), 16)

    next_addr = None
    for _, a in locations:
        if a > addr:
            next_addr = a
            break

    length = len(data) - addr if next_addr is None else next_addr - addr

    bytes_ = ' '.join(f'{b:02x}' for b in data[addr:addr + length])
    result.append(line[:m.start()] + '; ' + bytes_ + ' ' + line[m.start():])

open(FILE, 'w').write('\n'.join(result) + '\n')
