import seaborn as sns
from matplotlib import cm

styles = list(cm.datad.keys())
styles = styles + ['hls', 'husl', 'deep', 'muted', 'bright', 'pastel', 'colorblind']
styles.remove('jet')

#for style in styles:
#    print(style)
#    for color in sns.color_palette(style, 7).as_hex():
#        print(color)

def get_hex(style):
    return sns.color_palette(style, 7).as_hex()

def fill_template(template, hex_list):
    for i in range(7):
        template = template.replace(f'placeholder_{i}', f'"{hex_list[i]}"')
    return template

for style in styles:
    with open('template.lua', 'r') as infile, open(f'lua/{style}.lua', 'w') as outfile:
        template = infile.read()
        hex_list = get_hex(style)
        contents = fill_template(template, hex_list)
        outfile.write(contents)
