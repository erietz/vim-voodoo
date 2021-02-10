# About

All of the [seaborn](https://seaborn.pydata.org/) styles ported to vim color
schemes with the help of
[colorbuddy.nvim](https://github.com/tjdevries/colorbuddy.nvim)

There are a total or (185 themes)(light/dark)(normal/soft/hard contast) = 1110
variants in this repository!

This is a work in progress...

## Rationalizations

- There should be enough contrast such that text is legible
- There should not be so much contrast that your eyes burn
- Dark themes are better but sometimes the sun makes it impossible to see your
  monitor
- Strings and functions should be differentiable from each other and from
  everything else
- If there are too many highlight groups, it makes it difficult distinguish
  data types. For example:
  - Floats and numbers should be the same color
  - Keywords should be the same color

# Installation

Using vim-plug

```{vim}
Plug 'tjdevries/colorbuddy.vim'
Plug 'erietz/vim-voodoo'
```

- Add the following to your `init.vim` to set a theme:
    - `lua require('colorbuddy').colorscheme('<any seaborn/matplotlib theme name>')`
    - `<any seaborn/matplotlib theme name>` is one of the file names in the `lua` directory.
- For a light variant of a them add this to your `init.vim`
    - `let g:voodoo_variant = 'light'`

# Adjusting a theme

- If you like a theme but something is a little off, 
    - Consider the reversed theme (For example: change the theme from `Dark2` to `Dark2_r`)
    - Set the contrast to `soft` or `hard` using `let g:voodoo_contrast = soft`
- You can also change the `template.lua` file and run the `colors.py` script
to regenerate all of the colorschemes.

# Problems

- [ ] Only works with neovim?
- [ ] All themes are based off of the template.lua file which is a work in progress.
- [ ] The assignments from seaborn colors to vim syntax elements are random
- [x] Add light and dark variants. (Some themes look terrible with current background.)

# Screenshots

- Set3 theme with a dark background
![Set3 with dark background](./media/set3.png)
- Dark2 theme with a light background
![Dark2 with light background](./media/dark2_r.png)
- Pastel1 theme with a lower contrast
![Pastel1 theme with a lower contrast](./media/pastel1.png)

# Contrast ratios

|                    | visible_with_dark_background   |   dark_contrast_average | visible_with_light_background   |   light_contrast_average |
|:-------------------|:-------------------------------|------------------------:|:--------------------------------|-------------------------:|
| Set3_r             | True                           |                 9.49701 | False                           |                  1.42158 |
| Set3               | True                           |                 8.35457 | False                           |                  1.63281 |
| Pastel2_r          | True                           |                10.7052  | False                           |                  1.2021  |
| Wistia_r           | True                           |                 8.91224 | False                           |                  1.50502 |
| Set2_r             | True                           |                 7.34343 | False                           |                  1.81563 |
| Wistia             | True                           |                 8.8842  | False                           |                  1.51008 |
| Pastel1            | True                           |                10.213   | False                           |                  1.27771 |
| Pastel2            | True                           |                10.7052  | False                           |                  1.2021  |
| Set2               | True                           |                 7.34343 | False                           |                  1.81563 |
| Pastel1_r          | True                           |                10.6151  | False                           |                  1.22172 |
| pastel             | True                           |                 8.20024 | False                           |                  1.5592  |
| husl               | True                           |                 5.15598 | False                           |                  2.46717 |
| copper_r           | False                          |                 3.56883 | False                           |                  6.26198 |
| coolwarm_r         | False                          |                 7.05667 | False                           |                  2.05497 |
| gist_ncar_r        | False                          |                 6.91279 | False                           |                  2.61374 |
| gist_heat_r        | False                          |                 3.33492 | False                           |                  7.35414 |
| gist_gray_r        | False                          |                 4.51872 | False                           |                  5.54731 |
| gist_earth_r       | False                          |                 4.45126 | False                           |                  3.95605 |
| YlOrBr_r           | False                          |                 7.0806  | False                           |                  2.69559 |
| flag_r             | False                          |                 1.11621 | True                            |                 12.9073  |
| cubehelix_r        | False                          |                 4.58337 | False                           |                  5.23573 |
| YlOrRd_r           | False                          |                 6.56443 | False                           |                  2.72976 |
| afmhot_r           | False                          |                 6.5541  | False                           |                  5.16649 |
| autumn_r           | False                          |                 6.29068 | False                           |                  2.30978 |
| binary_r           | False                          |                 4.57057 | False                           |                  5.47444 |
| YlGnBu_r           | False                          |                 6.34131 | False                           |                  3.4923  |
| brg_r              | False                          |                 2.91229 | False                           |                  5.46666 |
| bwr_r              | False                          |                 6.81471 | False                           |                  2.54344 |
| cool_r             | False                          |                 5.25183 | False                           |                  2.67413 |
| bone_r             | False                          |                 4.43925 | False                           |                  5.90746 |
| magma              | False                          |                 3.60564 | False                           |                  6.50247 |
| YlGn_r             | False                          |                 7.23644 | False                           |                  2.62067 |
| gist_stern_r       | False                          |                 4.68687 | False                           |                  4.13754 |
| Greys_r            | False                          |                 5.81539 | False                           |                  4.50907 |
| OrRd_r             | False                          |                 6.59853 | False                           |                  2.78688 |
| Oranges_r          | False                          |                 6.519   | False                           |                  2.66958 |
| PRGn_r             | False                          |                 7.1144  | False                           |                  2.68718 |
| PiYG_r             | False                          |                 8.09358 | False                           |                  2.04465 |
| PuBu_r             | False                          |                 6.11146 | False                           |                  2.99392 |
| PuBuGn_r           | False                          |                 6.13598 | False                           |                  2.79663 |
| PuOr_r             | False                          |                 6.96713 | False                           |                  2.80528 |
| PuRd_r             | False                          |                 5.29267 | False                           |                  3.45211 |
| Purples_r          | False                          |                 6.15452 | False                           |                  3.49274 |
| RdBu_r             | False                          |                 6.97979 | False                           |                  2.61872 |
| RdGy_r             | False                          |                 6.95256 | False                           |                  2.83459 |
| RdPu_r             | False                          |                 5.72112 | False                           |                  3.6457  |
| RdYlBu_r           | False                          |                 7.92181 | False                           |                  2.08839 |
| RdYlGn_r           | False                          |                 7.84523 | False                           |                  2.02793 |
| Reds_r             | False                          |                 5.61467 | False                           |                  3.25897 |
| Spectral_r         | False                          |                 8.05168 | False                           |                  1.97232 |
| gist_rainbow_r     | False                          |                 7.18573 | False                           |                  2.83668 |
| gray_r             | False                          |                 4.51872 | False                           |                  5.54731 |
| gist_yarg_r        | False                          |                 4.57057 | False                           |                  5.47444 |
| vlag_r             | False                          |                 7.36319 | False                           |                  2.07889 |
| tab20c_r           | False                          |                 6.29207 | False                           |                  2.37021 |
| rocket             | False                          |                 3.50785 | False                           |                  6.26963 |
| rocket_r           | False                          |                 3.46603 | False                           |                  6.33838 |
| mako               | False                          |                 3.894   | False                           |                  5.8403  |
| mako_r             | False                          |                 3.85046 | False                           |                  5.9095  |
| icefire            | False                          |                 2.73546 | False                           |                  7.18613 |
| icefire_r          | False                          |                 2.73731 | False                           |                  7.18609 |
| vlag               | False                          |                 7.36085 | False                           |                  2.08129 |
| flare              | False                          |                 3.21198 | False                           |                  4.91925 |
| tab20_r            | False                          |                 6.03467 | False                           |                  2.3321  |
| flare_r            | False                          |                 3.23598 | False                           |                  4.88371 |
| crest              | False                          |                 3.59692 | False                           |                  4.40952 |
| crest_r            | False                          |                 3.62272 | False                           |                  4.37584 |
| hls                | False                          |                 5.8552  | False                           |                  2.55184 |
| deep               | False                          |                 4.05829 | False                           |                  3.33399 |
| dark               | False                          |                 1.70385 | True                            |                  8.34764 |
| muted              | False                          |                 4.41323 | False                           |                  3.18991 |
| bright             | False                          |                 3.72267 | False                           |                  4.04885 |
| tab20b_r           | False                          |                 4.2481  | False                           |                  3.82186 |
| tab10_r            | False                          |                 4.52212 | False                           |                  3.07552 |
| gnuplot_r          | False                          |                 3.13052 | False                           |                  5.1667  |
| prism_r            | False                          |                 5.52414 | False                           |                  3.17387 |
| gnuplot2_r         | False                          |                 4.50447 | False                           |                  5.45255 |
| GnBu_r             | False                          |                 7.45003 | False                           |                  2.28767 |
| hot_r              | False                          |                 6.44527 | False                           |                  4.22748 |
| hsv_r              | False                          |                 7.05489 | False                           |                  2.77987 |
| jet_r              | False                          |                 7.13684 | False                           |                  2.85187 |
| nipy_spectral_r    | False                          |                 5.36627 | False                           |                  3.7472  |
| ocean_r            | False                          |                 2.8799  | False                           |                  8.15786 |
| pink_r             | False                          |                 7.02319 | False                           |                  2.73572 |
| rainbow_r          | False                          |                 7.55383 | False                           |                  2.07806 |
| Set1_r             | False                          |                 5.49611 | False                           |                  3.03985 |
| seismic_r          | False                          |                 4.62936 | False                           |                  5.09425 |
| spring_r           | False                          |                 6.572   | False                           |                  2.13261 |
| summer_r           | False                          |                 6.85105 | False                           |                  2.15862 |
| terrain_r          | False                          |                 6.89137 | False                           |                  2.40178 |
| winter_r           | False                          |                 3.95479 | False                           |                  4.32871 |
| Accent_r           | False                          |                 6.50343 | False                           |                  2.65202 |
| Dark2_r            | False                          |                 4.24367 | False                           |                  3.18028 |
| Paired_r           | False                          |                 6.93387 | False                           |                  2.38833 |
| Greens_r           | False                          |                 6.9984  | False                           |                  2.55502 |
| BuGn_r             | False                          |                 7.14358 | False                           |                  2.52809 |
| CMRmap_r           | False                          |                 4.63243 | False                           |                  4.88783 |
| copper             | False                          |                 3.6037  | False                           |                  6.1902  |
| Purples            | False                          |                 6.10357 | False                           |                  3.53683 |
| RdBu               | False                          |                 6.98121 | False                           |                  2.61458 |
| RdGy               | False                          |                 6.95156 | False                           |                  2.84729 |
| RdPu               | False                          |                 5.67222 | False                           |                  3.68853 |
| RdYlBu             | False                          |                 7.9194  | False                           |                  2.08975 |
| RdYlGn             | False                          |                 7.84987 | False                           |                  2.02246 |
| Reds               | False                          |                 5.56742 | False                           |                  3.29644 |
| Spectral           | False                          |                 8.05352 | False                           |                  1.97027 |
| YlGn               | False                          |                 7.18568 | False                           |                  2.65158 |
| YlGnBu             | False                          |                 6.28964 | False                           |                  3.53959 |
| YlOrBr             | False                          |                 7.02995 | False                           |                  2.72748 |
| YlOrRd             | False                          |                 6.51459 | False                           |                  2.75989 |
| afmhot             | False                          |                 6.60769 | False                           |                  5.09192 |
| autumn             | False                          |                 6.32776 | False                           |                  2.29868 |
| binary             | False                          |                 4.51872 | False                           |                  5.54731 |
| bone               | False                          |                 4.49077 | False                           |                  5.83272 |
| brg                | False                          |                 2.94082 | False                           |                  5.43403 |
| bwr                | False                          |                 6.82321 | False                           |                  2.52721 |
| cool               | False                          |                 5.22578 | False                           |                  2.68208 |
| PuRd               | False                          |                 5.2462  | False                           |                  3.49031 |
| PuOr               | False                          |                 6.96238 | False                           |                  2.83723 |
| PuBuGn             | False                          |                 6.08781 | False                           |                  2.8267  |
| BuGn               | False                          |                 7.09343 | False                           |                  2.5587  |
| plasma             | False                          |                 4.01451 | False                           |                  4.82091 |
| viridis            | False                          |                 4.30398 | False                           |                  4.38555 |
| cividis            | False                          |                 4.03568 | False                           |                  4.69457 |
| twilight           | False                          |                 3.23008 | False                           |                  6.43237 |
| twilight_shifted   | False                          |                 4.57359 | False                           |                  4.4993  |
| turbo              | False                          |                 6.80731 | False                           |                  2.4247  |
| Blues              | False                          |                 6.30181 | False                           |                  3.00717 |
| BrBG               | False                          |                 7.19096 | False                           |                  2.56098 |
| BuPu               | False                          |                 5.71182 | False                           |                  3.5573  |
| PuBu               | False                          |                 6.06261 | False                           |                  3.0285  |
| CMRmap             | False                          |                 4.68389 | False                           |                  4.81348 |
| GnBu               | False                          |                 7.40036 | False                           |                  2.31438 |
| Greens             | False                          |                 6.94858 | False                           |                  2.58567 |
| Greys              | False                          |                 5.76139 | False                           |                  4.57915 |
| OrRd               | False                          |                 6.54981 | False                           |                  2.81852 |
| Oranges            | False                          |                 6.47293 | False                           |                  2.69617 |
| PRGn               | False                          |                 7.11598 | False                           |                  2.67136 |
| PiYG               | False                          |                 8.09517 | False                           |                  2.0372  |
| coolwarm           | False                          |                 7.05638 | False                           |                  2.05514 |
| cubehelix          | False                          |                 4.63645 | False                           |                  5.16259 |
| BuPu_r             | False                          |                 5.76271 | False                           |                  3.51244 |
| flag               | False                          |                 1.88491 | False                           |                  8.08705 |
| Accent             | False                          |                 6.50343 | False                           |                  2.65202 |
| Dark2              | False                          |                 4.24367 | False                           |                  3.18028 |
| Paired             | False                          |                 6.20847 | False                           |                  2.53862 |
| Set1               | False                          |                 5.07385 | False                           |                  3.33907 |
| tab10              | False                          |                 3.77264 | False                           |                  3.68189 |
| tab20              | False                          |                 5.87791 | False                           |                  2.66398 |
| tab20b             | False                          |                 4.06267 | False                           |                  4.25157 |
| tab20c             | False                          |                 6.41908 | False                           |                  2.26021 |
| magma_r            | False                          |                 3.55966 | False                           |                  6.57719 |
| inferno_r          | False                          |                 3.57824 | False                           |                  6.61396 |
| plasma_r           | False                          |                 3.97279 | False                           |                  4.8684  |
| viridis_r          | False                          |                 4.26442 | False                           |                  4.43209 |
| cividis_r          | False                          |                 3.99674 | False                           |                  4.74199 |
| twilight_r         | False                          |                 3.23012 | False                           |                  6.43168 |
| twilight_shifted_r | False                          |                 4.5742  | False                           |                  4.49923 |
| turbo_r            | False                          |                 6.80637 | False                           |                  2.42756 |
| Blues_r            | False                          |                 6.35168 | False                           |                  2.97105 |
| BrBG_r             | False                          |                 7.19045 | False                           |                  2.55866 |
| inferno            | False                          |                 3.62488 | False                           |                  6.53921 |
| winter             | False                          |                 3.98888 | False                           |                  4.29978 |
| terrain            | False                          |                 6.93817 | False                           |                  2.36777 |
| summer             | False                          |                 6.89173 | False                           |                  2.14532 |
| gnuplot2           | False                          |                 4.56449 | False                           |                  5.37134 |
| gist_earth         | False                          |                 4.48948 | False                           |                  3.89769 |
| gist_gray          | False                          |                 4.57057 | False                           |                  5.47444 |
| gist_heat          | False                          |                 3.38245 | False                           |                  7.2765  |
| gist_ncar          | False                          |                 6.9974  | False                           |                  2.49796 |
| gist_rainbow       | False                          |                 7.15563 | False                           |                  2.83834 |
| gist_stern         | False                          |                 4.74526 | False                           |                  4.00503 |
| gist_yarg          | False                          |                 4.51872 | False                           |                  5.54731 |
| gnuplot            | False                          |                 3.16901 | False                           |                  5.11213 |
| gray               | False                          |                 4.57057 | False                           |                  5.47444 |
| spring             | False                          |                 6.60533 | False                           |                  2.12453 |
| hot                | False                          |                 6.48535 | False                           |                  4.16215 |
| hsv                | False                          |                 7.08692 | False                           |                  2.79029 |
| nipy_spectral      | False                          |                 5.38762 | False                           |                  3.76827 |
| ocean              | False                          |                 2.92028 | False                           |                  8.13364 |
| pink               | False                          |                 7.07682 | False                           |                  2.69685 |
| prism              | False                          |                 5.94731 | False                           |                  3.20161 |
| rainbow            | False                          |                 7.5592  | False                           |                  2.06701 |
| seismic            | False                          |                 4.63226 | False                           |                  5.06625 |
| colorblind         | False                          |                 4.89047 | False                           |                  2.88131 |
