let g:syntastic_check_on_open=1
let g:syntastic_enable_signs=1
let g:syntastic_echo_current_error=1
let g:syntastic_auto_loc_list=1

" Silence erroneous HTML template errors
" https://github.com/scrooloose/syntastic/issues/240
let g:syntastic_html_tidy_ignore_errors = [
    \ 'plain text isn''t allowed in <head> elements',
    \ '<meta> isn''t allowed in <body> elements',
    \ '<meta> proprietary attribute "property"'
    \ ]
