import sys


FILE = 'super-tennis-usa-europe.sms'


def dump_chunks(data, addr):
    num_chunks = data[addr]
    print(f'\t.DB {num_chunks}\t\t\t;{addr:04x}')
    addr += 1

    print()

    for i in range(num_chunks):
        # Destination Address (Little-Endian)
        dest_addr = data[addr] | (data[addr+1] << 8)
        print(f'\t.DW ${dest_addr:04x}\t\t;{addr:04x}')
        addr += 2

        # Data Length (Little-Endian)
        actual_len = data[addr] | (data[addr+1] << 8)
        print(f'\t.DW {actual_len}\t\t\t;{addr:04x}')
        addr += 2

        # Data Payload
        for _ in range(actual_len):
            print(f'\t.DB ${data[addr]:02x}\t\t;{addr:04x}')
            addr += 1

        if i < num_chunks - 1:
            print()

    return addr


if len(sys.argv) != 2:
    print(f'usage: {sys.argv[0]} <address>')
    sys.exit(1)

raw_addr = sys.argv[1]

with open(FILE, 'rb') as f:
    data = f.read()

addr = int(raw_addr, 16)

dump_chunks(data, addr)
