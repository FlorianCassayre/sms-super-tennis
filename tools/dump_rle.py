import sys


FILE = 'super-tennis-usa-europe.sms'


def dump_stream(data, addr):
    while True:
        ctrl = data[addr]
        pos = addr
        addr += 1

        if ctrl == 0:
            print(f'\t.DB RLE_END\t\t;{pos:04x}')
            return addr

        length = ctrl & 0x7f

        if ctrl & 0x80:
            print(f'\t.DB RLE_LIT | {length}\t\t;{pos:04x}')
            for _ in range(length):
                print(f'\t.DB %{data[addr]:08b}\t\t;{addr:04x}')
                addr += 1
        else:
            print(f'\t.DB RLE_REP | {length}\t\t;{pos:04x}')
            print(f'\t.DB %{data[addr]:08b}\t\t;{addr:04x}')
            addr += 1


if len(sys.argv) != 2:
    print(f'usage: {sys.argv[0]} <address>')
    sys.exit(1)

raw_addr = sys.argv[1]

with open(FILE, 'rb') as f:
    data = f.read()

addr = int(raw_addr, 16)

for plane in range(4):
    if plane:
        print()
    addr = dump_stream(data, addr)
