call plug#begin('~/.vim/plugged')

" Plugs
Plug 'valloric/youcompleteme'
" python with virtualenv support
"python << EOF
"import os
"import sys
"if 'VIRTUAL_ENV' in os.environ:
    "project_base_dir = os.environ['VIRTUAL_ENV']
    "activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
    "execfile(activate_this, dict(__file__=activate_this))
"EOF
let g:ycm_server_python_interpreter='python3'
"let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_python_binary_path = 'python3'
Plug 'easymotion/vim-easymotion'
Plug 'sirver/ultisnips'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tmhedberg/simpylfold'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-surround'
Plug 't9md/vim-surround_custom_mapping'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'pangloss/vim-javascript'
Plug 'othree/html5.vim'
Plug 'tpope/vim-haml'
Plug 'jiangmiao/auto-pairs'
Plug 'mattn/emmet-vim', { 'for': ['html', 'php', 'css'] }
Plug 'hail2u/vim-css3-syntax'
Plug 'cakebaker/scss-syntax.vim'
Plug 'kchmck/vim-coffee-script', { 'for': ['coffee'] }
" Plug '2072/php-indenting-for-vim'
Plug 'captbaritone/better-indent-support-for-php-with-html'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'rizzatti/dash.vim'
Plug 'stanangeloff/php.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-capslock'
"Plug 'dag/vim-fish'
Plug 'azizlight/fish.vim'
Plug 'glench/vim-jinja2-syntax'

" Color-schemes
Plug 'flazz/vim-colorschemes'
Plug 'tomasr/molokai'
Plug 'joshdick/onedark.vim'

call plug#end()

" Plug Settings
" UltiSnips
let g:UltiSnipsSnippetsDir = $HOME . "/.vim/UltiSnips"
" Airline
let g:airline#extensions#tabline#enabled = 2
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#right_sep = ' '
let g:airline#extensions#tabline#right_alt_sep = '|'
let g:airline_left_sep = ' '
let g:airline_left_alt_sep = '|'
let g:airline_right_sep = ' '
let g:airline_right_alt_sep = '|'
"Nerdtree
let g:NERDTreeIgnore=['\.rbc$', '\~$', '\.pyc$', '\.db$', '\.sqlite$', '__pycache__']
let g:NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$', '\.bak$', '\~$']
let g:NERDTreeShowBookmarks=1
let g:nerdtree_tabs_focus_on_files=1
let g:NERDTreeMapOpenInTabSilent = '<RightMouse>'
let g:NERDTreeWinSize = 50
