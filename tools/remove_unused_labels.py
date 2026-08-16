import re
from pathlib import Path

ROOT = Path('src')

files = [path for path in ROOT.rglob('*') if path.is_file()]

# Collect every label declaration globally.
labels = {}

for path in files:
    lines = path.read_text().splitlines(keepends=True)

    for i, line in enumerate(lines):
        stripped = line.rstrip()
        if stripped.endswith(':'):
            label = stripped[:-1]
            labels.setdefault(label, []).append((path, i))

# Build one global content string without label declaration lines.
declarations = {
    (path, i)
    for occurrences in labels.values()
    for path, i in occurrences
}

content = ''.join(
    line
    for path in files
    for i, line in enumerate(path.read_text().splitlines(keepends=True))
    if (path, i) not in declarations
)

# Find labels which have no usage anywhere in the source tree.
unused = [
    label
    for label in labels
    if not re.search(
        rf'(?<![A-Za-z0-9_]){re.escape(label)}(?![A-Za-z0-9_])',
        content,
    )
]

# Remove only unused label declarations, and only from files containing them.
unused_by_file = {}

for label in unused:
    for path, line_number in labels[label]:
        unused_by_file.setdefault(path, set()).add(line_number)

for path, line_numbers in unused_by_file.items():
    lines = path.read_text().splitlines(keepends=True)

    print(path)
    with path.open('w') as f:
        f.writelines(
            line
            for i, line in enumerate(lines)
            if i not in line_numbers
        )

print()
print('\n'.join(unused))
