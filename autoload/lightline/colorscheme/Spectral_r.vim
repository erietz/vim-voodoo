let s:grey_1  = [ '#333333', 236 ]
let s:grey_2  = [ '#3a3a3a', 239 ]
let s:grey_3  = [ '#5c5c5c', 242 ]
let s:grey_4   = [ '#828282', 244 ]
let s:grey_5   = [ '#adadad', 246 ]
let s:grey_6   = [ '#d1d1d1', 248 ]
let s:grey_7   = [ '#ededed', 253 ]
let s:yellow  = [ "#3f97b7" , 215 ]
let s:orange  = [ "#89d0a4" , 222 ]
let s:red     = [ "#d8ef9b" , 167 ]
let s:magenta = [ "#fffebe", 217 ]
let s:blue    = [ "#fed27f", 103 ]
let s:cyan    = [ "#f88c51", 110 ]
let s:green   = [ "#dc484c", 107 ]

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}
let s:p.normal.left = [ [ s:grey_1, s:blue ], [ s:grey_7, s:grey_2 ] ]
let s:p.normal.right = [ [ s:grey_1, s:grey_5 ], [ s:grey_6, s:grey_2 ] ]
let s:p.inactive.right = [ [ s:grey_1, s:grey_3 ], [ s:grey_4, s:grey_1 ] ]
let s:p.inactive.left =  [ [ s:grey_4, s:grey_1 ], [ s:grey_3, s:grey_1 ] ]
let s:p.insert.left = [ [ s:grey_1, s:green ], [ s:grey_7, s:grey_2 ] ]
let s:p.replace.left = [ [ s:grey_1, s:red ], [ s:grey_7, s:grey_2 ] ]
let s:p.visual.left = [ [ s:grey_1, s:magenta ], [ s:grey_7, s:grey_2 ] ]
let s:p.normal.middle = [ [ s:grey_4, s:grey_1 ] ]
let s:p.inactive.middle = [ [ s:grey_3, s:grey_1 ] ]
let s:p.tabline.left = copy(s:p.normal.middle)
let s:p.tabline.tabsel = [ [ s:grey_7, s:grey_3 ] ]
let s:p.tabline.middle = copy(s:p.normal.middle)
let s:p.tabline.right = copy(s:p.tabline.middle)
let s:p.normal.error = [ [ s:red, s:grey_1 ] ]
let s:p.normal.warning = [ [ s:yellow, s:grey_2 ] ]

let g:lightline#colorscheme#Spectral_r#palette = lightline#colorscheme#flatten(s:p)
