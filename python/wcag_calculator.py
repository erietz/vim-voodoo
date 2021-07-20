#!/usr/bin/env python3

import pandas as pd
import json

with open('python/all_styles.json', 'r') as f:
    styles = json.load(f)

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

def hex_to_rgb(h):
    '''Takes a hex rgb string (e.g. #ffffff) and returns an RGB tuple (float, float, float).'''
    return tuple(int(h[i:i + 2], 16) / 255. for i in (1, 3, 5)) # skip '#'

hard_background =  linear_RGB_to_luminance(sRGB_to_Linear(hex_to_rgb('#0F1419')))
soft_background =  linear_RGB_to_luminance(sRGB_to_Linear(hex_to_rgb('#3a3a3a')))
normal_background =  linear_RGB_to_luminance(sRGB_to_Linear(hex_to_rgb('#2b2b2b')))

hard_data = {}
soft_data = {}
normal_data = {}

for style in styles:
    palette_rgb = styles[style]['rgb']
    palette_luminance = [
        linear_RGB_to_luminance(sRGB_to_Linear(i)) for i in palette_rgb
    ]

    hard_contrast_ratios = [contrast_ratio(i, hard_background) for i in palette_luminance]
    soft_contrast_ratios = [contrast_ratio(i, soft_background) for i in palette_luminance]
    normal_contrast_ratios = [contrast_ratio(i, normal_background) for i in palette_luminance]

    hard_data[style] = hard_contrast_ratios
    soft_data[style] = soft_contrast_ratios
    normal_data[style] = normal_contrast_ratios

def make_sub_df(data, name):
    df = pd.DataFrame(data).transpose()
    visible = (df > 4.5).all(axis='columns')
    df = df.rename(columns={i: f'{name}_color_{i}' for i in df.columns.values})
    df.insert(0, f'{name}_average_contrast', df.mean(axis='columns'))
    df.insert(0, f'{name}_all_colors_visible', visible)
    return df


hard_df = make_sub_df(hard_data, 'hard')
normal_df = make_sub_df(normal_data, 'normal')
soft_df = make_sub_df(soft_data, 'soft')

tmp_names = ['normal', 'hard', 'soft']
tmp_dfs = [normal_df, hard_df, soft_df]
for name, df in zip(tmp_names, tmp_dfs):
    with open(f'tables/{name}_ratios.md', 'w') as f:
        df.sort_values(by=f'{name}_average_contrast', ascending=False).to_markdown(f)

df = pd.concat(tmp_dfs, axis='columns')
df = df.drop(df.filter(regex=r'.*color_\d').columns, axis='columns')

df = df.sort_values(by='hard_all_colors_visible', ascending=False)

with open('tables/contrast_ratio_table.md', 'w') as f:
    df.to_markdown(f)

print(df)
