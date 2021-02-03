import seaborn as sns
from matplotlib import cm
from pathlib import Path

ROOT_DIR = Path(__file__).resolve().parent
TEMPLATE_FILE = ROOT_DIR / 'template.lua'
OUT_DIR = ROOT_DIR / 'lua'

#print(list(cm.datad.keys()))
#print(list(cm.cmap_d.keys())) # has more options but is depricated and throws warning

styles = list(cm.cmap_d.keys())
styles = styles + ['hls', 'husl', 'deep', 'dark', 'muted', 'bright', 'pastel', 'colorblind']
styles.remove('jet')

def get_hex(style):
    return sns.color_palette(style, 7).as_hex()

def fill_template(template, hex_list):
    for i in range(7):
        template = template.replace(f'placeholder_{i}', f'"{hex_list[i]}"')
    return template

for style in styles:
    with open(TEMPLATE_FILE, 'r') as infile, open(OUT_DIR/f'{style}.lua', 'w') as outfile:
        template = infile.read()
        hex_list = get_hex(style)
        contents = fill_template(template, hex_list)
        outfile.write(contents)
