# About

All of the [seaborn](https://seaborn.pydata.org/) color schemes ported to vim
with the help of
[colorbuddy.nvim](https://github.com/tjdevries/colorbuddy.nvim)

# Installation

Using vim-plug

```{vim}
Plug 'tjdevries/colorbuddy.vim'
Plug 'erietz/vim-voodoo'
```

Add the following to your `init.vim`:

`lua require('colorbuddy').colorscheme('<any seaborn/matplotlib theme name>')`

Where `<any seaborn/matplotlib theme name>` is one of the file names in the
`lua` directory.

# Problems

- [ ] Only works with neovim?
- [ ] All themes are based off of the template.lua file which is a work in progress.
- [ ] The assignments from seaborn colors to vim syntax elements are random
