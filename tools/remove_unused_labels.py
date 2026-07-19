import re

FILE = "src/super-tennis.asm"

lines = open(FILE).readlines()

labels = {}
for i, line in enumerate(lines):
    if line.rstrip().endswith(":"):
        labels[line.rstrip()[:-1]] = i

content = "".join(
    line for i, line in enumerate(lines)
    if i not in labels.values()
)

unused = []

for label in labels:
    if not re.search(rf"(?<![A-Za-z0-9_]){re.escape(label)}(?![A-Za-z0-9_])", content):
        unused.append(label)

if len(unused) > 0:
    with open(FILE, "w") as f:
        f.writelines(
            line for i, line in enumerate(lines)
            if i not in [labels[label] for label in unused]
        )

    print("\n".join(unused))
