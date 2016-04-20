" Small default width for NERDTree pane
let g:NERDTreeWinSize = 20

" Change working directory if you change root directories
let g:NERDTreeChDirMode=2

" Close vim if the only window left open is a NERDTree?
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
