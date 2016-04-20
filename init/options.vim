" based on vim, modified where necessary for nvim
set guifont=Menlo:h12
set guioptions-=T               " Remove GUI toolbar
set guioptions-=e               " Use text tab bar, not GUI
set guioptions-=rL              " Remove scrollbars
set visualbell                  " Suppress audio/visual error bell
set notimeout                   " No command timeout
set showcmd                     " Show typed command prefixes while waiting for operator
set mouse=a                     " Use mouse support in XTerm/iTerm.

set expandtab                   " Use soft tabs
set tabstop=4                   " Tab settings
set autoindent
set smarttab                    " Use shiftwidth to tab at line beginning
set shiftwidth=4                " Width of autoindent to match single tab.
set number                      " Line numbers
set nowrap                      " No wrapping
set tw=0                        " Stop vim breaking text to new line after so many columns
set backspace=indent,eol,start " Let backspace work over anything.
set wildignore+=tags               " Ignore tags when globbing.
set wildignore+=tmp/**             " ...Also tmp files.
set wildignore+=public/uploads/**  " ...Also uploads.
set wildignore+=public/images/**   " ...Also images.
set wildignore+=node_modules    " ...Also node_modules

" fzf support (https://github.com/junegunn/fzf)
if executable("fzf")
  if isdirectory("/usr/local/Cellar/fzf/HEAD")
    set rtp+=/usr/local/Cellar/fzf/HEAD
  elseif isdirectory("~/.fzf")
    set rtp+=~/.fzf
  endif
endif

set list                        " Show whitespace and show tab as a space, so don't show ^I for tab
if has("gui_running")
  set listchars=tab:\ \  ,trail:·
else
  set listchars=tab:\ \ ,trail:~
endif

set showmatch                   " Show matching brackets
set hidden                      " Allow hidden, unsaved buffers
set splitright                  " Add new windows towards the right
set splitbelow                  " ... and bottom
set wildmode=list:longest       " Bash-like tab completion
set scrolloff=3                 " Scroll when the cursor is 3 lines from edge
set cursorline                  " Highlight current line

" More detailed status line
set statusline=[%n]\ %f\ %m\ %y
set statusline+=%{fugitive#statusline()} " Show git details"
set statusline+=%{exists('g:loaded_rvm')?rvm#statusline():''} " Show RVM details"
set statusline+=%w              " [Preview]
set statusline+=%=              " Left/right separator
set statusline+=%c,             " Cursor column
set statusline+=%l/%L           " Cursor line/total lines
set statusline+=\ %P            " Percent through file

set laststatus=2                " Always show statusline

set incsearch                   " Incremental search
set history=1024                " History size
set smartcase                   " Smart case-sensitivity when searching (overrides ignorecase)

set autoread                    " No prompt for file changes outside Vim

set swapfile                    " Keep swapfiles
set directory=~/.vim-tmp,~/tmp,/var/tmp,/tmp
set backupdir=~/.vim-tmp,~/tmp,/var/tmp,/tmp

set hls                         " search with highlights by default
" Press Space to turn off highlighting and clear any message already
" displayed.
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>""

" Write all writeable buffers when changing buffers or losing focus.
" set autowriteall                " Save when doing various buffer-switching things.
" autocmd BufLeave,FocusLost * silent! wall  " Save anytime we leave a buffer or MacVim loses focus.

let g:gitgutter_enabled = 0

" use escape to cancel command-t
let g:CommandTCancelMap=['<ESC>','<C-c>']

" Turn off ri tooltips that don't work with Ruby 1.9 yet
" http://code.google.com/p/macvim/issues/detail?id=342
if has("gui_running")
  set noballooneval
endif

if !has('nvim')
    if has('mouse_sgr')
        set ttymouse=sgr
    endif
endif

" filetype specific options
" for go, perl, make, use 4-space real tabs
au FileType go,perl,make setl tabstop=4 softtabstop=4 shiftwidth=4 noexpandtab nolist

" Indentation guides configuration
" let g:indent_guides_enable_on_vim_startup = 1 " if open a directory indent_guides throws an error
let g:indent_guides_auto_colors = 0
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
"Colors set for dracula theme
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd ctermbg=23
" autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=53

" disable concealing of quotes in json files
let g:vim_json_syntax_conceal = 0

" ensure that freshly opened markdown files are not folded
let g:vim_markdown_folding_disabled = 1

