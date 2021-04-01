#!/usr/bin/env python3

import json
import seaborn as sns
from pathlib import Path

ROOT_DIR = Path(__file__).resolve().parent.parent
TEMPLATE_FILE = ROOT_DIR / 'template.lua'
OUT_DIR = ROOT_DIR / 'lua'

with open(ROOT_DIR / 'python/all_styles.json', 'r') as f:
    styles = json.load(f)

def fill_template(template, hex_list, style):
    for i in range(7):
        template = template.replace(f'placeholder_{i}', f'"{hex_list[i]}"')
    template = template.replace('placeholder_style_name', f'{style}')
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

LIGHTLINE_DIR = ROOT_DIR / 'autoload/lightline/colorscheme/'
LIGHTLINE_TEMPLATE = ROOT_DIR / 'autoload/lightline/template.vim'

generate_all_files(LIGHTLINE_TEMPLATE, LIGHTLINE_DIR, 'vim')
print('all lightline themes converted')


COLORS_DIR = ROOT_DIR / 'colors/'
COLORS_TEMPLATE = ROOT_DIR / 'colors/template.vim'

generate_all_files(COLORS_TEMPLATE, COLORS_DIR, 'vim')
print('all vim color aliases converted')
