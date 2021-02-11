#!/usr/bin/env python3

import json
import seaborn as sns
from pathlib import Path

ROOT_DIR = Path(__file__).resolve().parent.parent
TEMPLATE_FILE = ROOT_DIR / 'template.lua'
OUT_DIR = ROOT_DIR / 'lua'

with open('python/all_styles.json', 'r') as f:
    styles = json.load(f)

def fill_template(template, hex_list):
    for i in range(7):
        template = template.replace(f'placeholder_{i}', f'"{hex_list[i]}"')
    return template

for style in styles:
    with open(TEMPLATE_FILE, 'r') as infile, open(OUT_DIR/f'{style}.lua', 'w') as outfile:
        template = infile.read()
        hex_list = styles[style]['hex']
        contents = fill_template(template, hex_list)
        outfile.write(contents)

print('all converted')
