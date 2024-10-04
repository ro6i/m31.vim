" [lightline.vim](https://github.com/itchyny/lightline.vim) colorscheme for
" [m31.vim](https://github.com/ro6i/m31.vim) colorscheme

let s:none = "NONE"
let s:red = [ s:none, 1 ]
let s:bred = [ s:none, 17 ]
let s:green = [ s:none, 2 ]
let s:bgreen = [ s:none, 18 ]
let s:yellow = [ s:none, 3 ]
let s:blue = [ s:none, 4 ]
let s:bblue = [ s:none, 20 ]
let s:magenta = [ s:none, 5 ]
let s:bmagenta = [ s:none, 21 ]
let s:white = [ s:none, 7 ]
let s:black = [ s:none, 0 ]
let s:dark = [ s:none, 8 ]
let s:shaded = [ s:none, 16 ]
let s:tinted = [ s:none, 23 ]
let s:highlight = [ s:none, 27 ]
let s:mid = [ s:none, 31 ]
let s:transparent = [ s:none, s:none ]

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}
let s:p.normal.left = [ [ s:green, s:bgreen ], [ s:mid, s:shaded ] ]
let s:p.normal.middle = [ [ s:mid, s:transparent ] ]
let s:p.normal.right = [ [ s:black, s:green ], [ s:mid, s:shaded ] ]
let s:p.inactive.left =  [ [ s:dark, s:shaded ], [ s:tinted, s:shaded ] ]
let s:p.inactive.middle = [ [ s:dark, s:shaded ] ]
let s:p.inactive.right = [ [ s:dark, s:shaded ] ]
let s:p.insert.left = [ [ s:blue, s:bblue ], [ s:mid, s:shaded ] ]
let s:p.insert.right = [ [ s:black, s:blue ], [ s:white, s:black ] ]
let s:p.replace.left = [ [ s:red, s:bred ], [ s:white, s:black ] ]
let s:p.replace.right = [ [ s:black, s:red ], [ s:white, s:black ] ]
let s:p.visual.left = [ [ s:magenta, s:bmagenta ], [ s:mid, s:shaded ] ]
let s:p.visual.right = [ [ s:magenta, s:bmagenta ], [ s:white, s:black ] ]
let s:p.tabline.left = [ [ s:dark, s:transparent ] ]
let s:p.tabline.tabsel = [ [ s:dark, s:tinted] ]
let s:p.tabline.middle = [ [ s:white, s:transparent ] ]
let s:p.tabline.right = [ [ s:dark, s:transparent ] ]
let s:p.normal.error = [ [ s:black, s:red ] ]
let s:p.normal.warning = [ [ s:black, s:yellow ] ]

let g:lightline#colorscheme#m31#palette = lightline#colorscheme#flatten(s:p)
