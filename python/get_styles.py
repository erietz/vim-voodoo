#!/usr/bin/env python3

from matplotlib import cm
import seaborn as sns
import json

#print(list(cm.datad.keys()))
#print(list(cm.cmap_d.keys())) # has more options but is depricated and throws warning

styles_list = list(cm.cmap_d.keys())
styles_list = styles_list + ['hls', 'husl', 'deep', 'dark', 'muted', 'bright', 'pastel', 'colorblind']
styles_list.remove('jet')

def get_hex(style):
    """
    Returns a list of 7 colors, each of which is a hex string
    """
    return sns.color_palette(style, 7).as_hex()

def get_rgb(style):
    """
    Returns a list of 7 colors, each of which is an RGB tuple
    """
    return sns.color_palette(style, 7)

styles = {}

for style in styles_list:
    styles[style] = {
        'rgb': get_rgb(style),
        'hex': get_hex(style)
    }

#print(styles)

with open('python/all_styles.json', 'w') as f:
    json.dump(styles, f, indent=2)
