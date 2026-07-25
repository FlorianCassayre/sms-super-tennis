import sys


FILE = 'super-tennis-usa-europe.sms'


def dump_entry(index, data, addr):
    print(f'data_animation_frame_{index}:')

    # Header
    count = data[addr]
    print(f'\t.DB {count}\t\t;{addr:04x}')
    addr += 1

    base_delay = data[addr]
    print(f'\t.DB {base_delay}\t\t;{addr:04x}')
    addr += 1

    for _ in range(3):
        print(f'\t.DB ${data[addr]:02x}\t\t;{addr:04x}')
        addr += 1

    print()

    # Frame pairs: {frame_id, delay} x count
    for i in range(count):
        frame_id = data[addr]
        print(f'\t.DB ${frame_id:02x}\t\t;{addr:04x}')
        addr += 1

        delay = data[addr]
        print(f'\t.DB {delay}\t\t;{addr:04x}')
        addr += 1

        if i < count - 1:
            print()

    return addr


def dump_table(data, addr_first, addr_last):
    addr = addr_first
    index = 0

    while True:
        is_last = (addr == addr_last)
        next_addr = dump_entry(index, data, addr)

        if is_last:
            break

        print()
        print()

        addr = next_addr
        index += 1


if len(sys.argv) != 3:
    print(f'usage: {sys.argv[0]} <first_entry_address> <last_entry_address>')
    sys.exit(1)

raw_first = sys.argv[1]
raw_last = sys.argv[2]

with open(FILE, 'rb') as f:
    data = f.read()

addr_first = int(raw_first, 16)
addr_last = int(raw_last, 16)

dump_table(data, addr_first, addr_last)
