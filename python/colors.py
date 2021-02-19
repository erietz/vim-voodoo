#!/usr/bin/env python3

import json
import seaborn as sns
from pathlib import Path

ROOT_DIR = Path(__file__).resolve().parent.parent
TEMPLATE_FILE = ROOT_DIR / 'template.lua'
OUT_DIR = ROOT_DIR / 'lua'

with open('python/all_styles.json', 'r') as f:
    styles = json.load(f)

def fill_template(template, hex_list, style):
    for i in range(7):
        template = template.replace(f'placeholder_{i}', f'"{hex_list[i]}"')
        template = template.replace('placeholder_theme_name', f'{style}')
    return template

def generate_all_files(template_file, out_dir, extension):
    for style in styles:
        with open(template_file, 'r') as infile, open(out_dir/f'{style}.{extension}', 'w') as outfile:
            template = infile.read()
            hex_list = styles[style]['hex']
            contents = fill_template(template, hex_list, style)
            outfile.write(contents)

generate_all_files(TEMPLATE_FILE, OUT_DIR, 'lua')
print('all colorschemes converted')

AIRLINE_DIR = ROOT_DIR / 'autoload/airline/themes/'
AIRLINE_TEMPLATE = ROOT_DIR / 'autoload/airline/template.vim'

generate_all_files(AIRLINE_TEMPLATE, AIRLINE_DIR, 'vim')
print('all airline themes converted')
