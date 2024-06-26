" [lightline.vim](https://github.com/itchyny/lightline.vim) colorscheme for
" [m31.vim](https://github.com/ro6i/m31.vim) colorscheme

let s:none = "NONE"
let s:red = [ s:none, 1 ]
let s:green = [ s:none, 2 ]
let s:yellow = [ s:none, 3 ]
let s:blue = [ s:none, 4 ]
let s:purple = [ s:none, 5 ]
let s:white = [ s:none, 7 ]
let s:black = [ s:none, 0 ]
let s:dark = [ s:none, 0 ]
let s:_dark = [ s:none, 8 ]
let s:brightwhite = [ s:none, 15 ]
let s:shaded = [ s:none, 16 ]
let s:transparent = [ s:none, s:none ]

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}
let s:p.normal.left = [ [ s:black, s:green ], [ s:white, s:dark ] ]
let s:p.normal.middle = [ [ s:white, s:transparent ] ]
let s:p.normal.right = [ [ s:black, s:green ], [ s:white, s:dark ] ]
let s:p.inactive.left =  [ [ s:_dark, s:shaded ], [ s:white, s:dark ] ]
let s:p.inactive.middle = [ [ s:_dark, s:shaded ] ]
let s:p.inactive.right = [ [ s:_dark, s:shaded ] ]
let s:p.insert.left = [ [ s:black, s:blue ], [ s:white, s:dark ] ]
let s:p.insert.right = [ [ s:black, s:blue ], [ s:white, s:dark ] ]
let s:p.replace.left = [ [ s:black, s:red ], [ s:white, s:dark ] ]
let s:p.replace.right = [ [ s:black, s:red ], [ s:white, s:dark ] ]
let s:p.visual.left = [ [ s:black, s:purple ], [ s:white, s:dark ] ]
let s:p.visual.right = [ [ s:black, s:purple ], [ s:white, s:dark ] ]
" let s:p.tabline.left = [ [ s:white, s:dark ] ]
let s:p.tabline.left = [ [ s:_dark, s:transparent ] ]
" let s:p.tabline.tabsel = [ [ s:black, s:white ] ]
let s:p.tabline.tabsel = [ [ s:white, s:dark ] ]
let s:p.tabline.middle = [ [ s:white, s:transparent ] ]
" let s:p.tabline.right = [ [ s:white, s:dark ] ]
let s:p.tabline.right = [ [ s:_dark, s:transparent ] ]
let s:p.normal.error = [ [ s:black, s:red ] ]
let s:p.normal.warning = [ [ s:black, s:yellow ] ]

let g:lightline#colorscheme#m31#palette = lightline#colorscheme#flatten(s:p)
