execute pathogen#infect()
set encoding=utf-8
syntax enable
filetype plugin indent on
set background=dark
let g:solarized_termcolors=256
colorscheme solarized
" Relative numbers and highlighting the cursorline
set relativenumber
set number
set cursorline
set numberwidth=1
" Highlight search
set hlsearch
map <C-n> :NERDTreeToggle<CR>
map <C-l> :lclose<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" Close NERDTree after a file is open
let g:NERDTreeQuitOnOpen=0
" Show hidden files in NERDTree
let NERDTreeShowHidden=1
" Airline options
set laststatus=2
let g:airline_powerline_fonts=1
let g:airline#extensions#syntastic#enabled = 1
" TERM for Tmux colors
set term=screen-256color
" Set indent to two spaces
set expandtab
set shiftwidth=2
set softtabstop=2
" Syntastic settings
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers=['eslint']
" Indent line
let g:indentLine_color_term = 239
" Vim-Go highlighting
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
" JS autocomplete
autocmd FileType javascript setlocal omnifunc=tern#Complete
autocmd CompleteDone * pclose
" Carriage return for JS
imap <C-c> <CR><Esc>O
" Enable HTML/CSS highlighting with vim-javascript
let javascript_enable_domhtmlcss = 1
" Fix backspace to move up lines
set backspace=2
" NERDTree will open in new tabs
let NERDTreeMapOpenInTab='<ENTER>'
" Allow JSX in .js files
let g:jsx_ext_required = 0
