#!/usr/bin/env python3

import pandas as pd
from matplotlib import cm
import seaborn as sns

styles = list(cm.cmap_d.keys())
styles = styles + ['hls', 'husl', 'deep', 'dark', 'muted', 'bright', 'pastel', 'colorblind']
styles.remove('jet')

def get_rgb(style):
    """
    Returns a list of 7 colors, each of which is an RGB tuple
    """
    return sns.color_palette(style, 7)

# print(sns.color_palette(styles[1]))

def sRGB_to_Linear(rgb_tuple):
    """
    https://www.w3.org/TR/WCAG20/#relativeluminancedef
    """
    new_rgb = []
    for value in rgb_tuple:
        if value <= 0.03928:
            new_rgb.append(value / 12.92)
        else:
            value = ((value + 0.055)/1.055)**2.4
            new_rgb.append(value)
    return tuple(new_rgb)

def linear_RGB_to_luminance(rgb_tuple):
    """
    https://www.w3.org/TR/WCAG20/#relativeluminancedef
    """
    R,G,B = rgb_tuple[:]
    return sum((R*0.2126, G*0.7152, B*0.0722))

def contrast_ratio(lighter_luminance, darker_luminance):
    """
    Can range from 1 to 21 (1:1 to 21:1)
    The WCAG standard is 4.5:1 minimu contrast
    """
    return (lighter_luminance + 0.05)/(darker_luminance + 0.05)

def hextofloats(h):
    '''Takes a hex rgb string (e.g. #ffffff) and returns an RGB tuple (float, float, float).'''
    return tuple(int(h[i:i + 2], 16) / 255. for i in (1, 3, 5)) # skip '#'

dark_background =  linear_RGB_to_luminance(sRGB_to_Linear(hextofloats('#2b2b2b')))
light_background =  linear_RGB_to_luminance(sRGB_to_Linear(hextofloats('#F1F3F4')))

dark_data = {}
light_data = {}
for style in styles:
    palette_rgb = get_rgb(style)
    palette_luminance = [
        linear_RGB_to_luminance(sRGB_to_Linear(i)) for i in palette_rgb
    ]
    
    dark_contrast_ratios = [contrast_ratio(i, dark_background) for i in palette_luminance]
    light_contrast_ratios = [contrast_ratio(light_background, i) for i in palette_luminance]

    dark_data[style] = dark_contrast_ratios
    light_data[style] = light_contrast_ratios

dark_df = pd.DataFrame(dark_data).transpose()
dark_df = dark_df.rename(columns={i: f'dark_color{i}' for i in dark_df.columns.values})
visible = (dark_df > 4.5).all(axis='columns')
dark_df.insert(0, 'dark_contrast_average', dark_df.mean(axis='columns'))
dark_df.insert(0, 'visible_with_dark_background', visible)

with open('dark_ratios.md', 'w') as f:
    dark_df.sort_values(by='dark_contrast_average', ascending=False).to_markdown(f)

light_df = pd.DataFrame(light_data).transpose()
light_df = light_df.rename(columns={i: f'light_color{i}' for i in light_df.columns.values})
visible = (light_df > 4.5).all(axis='columns')
light_df.insert(0, 'light_contrast_average', light_df.mean(axis='columns'))
light_df.insert(0, 'visible_with_light_background', visible)

with open('light_ratios.md', 'w') as f:
    light_df.sort_values(by='light_contrast_average', ascending=False).to_markdown(f)

df = pd.concat([
    dark_df[['visible_with_dark_background', 'dark_contrast_average']],
    light_df[['visible_with_light_background', 'light_contrast_average']]
    ], axis='columns')

df = df.sort_values(by='visible_with_dark_background', ascending=False)

with open('contrast_ratio_table.md', 'w') as f:
    df.to_markdown(f)

print(df)


