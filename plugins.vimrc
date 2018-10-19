call plug#begin('~/.vim/plugged')

" Plugs
Plug 'valloric/youcompleteme'
map <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>
let g:ycm_autoclose_preview_window_after_completion = 1
map <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>
let g:ycm_python_binary_path = 'python'

Plug 'easymotion/vim-easymotion'
Plug 'sirver/ultisnips'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tmhedberg/simpylfold'
Plug 'konfekt/fastfold'
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
Plug 'mattn/emmet-vim'
Plug 'hail2u/vim-css3-syntax'
Plug 'cakebaker/scss-syntax.vim'
Plug 'kchmck/vim-coffee-script', { 'for': ['coffee'] }
Plug 'captbaritone/better-indent-support-for-php-with-html'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'rizzatti/dash.vim'
Plug 'stanangeloff/php.vim'
Plug 'tpope/vim-fugitive'
Plug 'azizlight/fish.vim'
Plug 'lepture/vim-jinja'
Plug 'udalov/kotlin-vim'
Plug 'fisadev/vim-isort'
Plug 'mxw/vim-jsx'
Plug 'benmills/vimux'
Plug 'tyewang/vimux-jest-test'
Plug 'vim-scripts/indentpython.vim'


" Plug '2072/php-indenting-for-vim'
"Plug 'tpope/vim-capslock'
"Plug 'tpope/vim-sleuth'
"Plug 'dag/vim-fish'
"Plug 'glench/vim-jinja2-syntax'
"Plug 'leafgarland/typescript-vim'
"Plug 'eslint/eslint'
"Plug 'w0rp/ale'

Plug 'majutsushi/tagbar'
nmap <F8> :TagbarToggle<CR>
"Plug 'shougo/deoplete.nvim'
"if has('nvim')
  "Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"else
  "Plug 'Shougo/deoplete.nvim'
  "Plug 'roxma/nvim-yarp'
  "Plug 'roxma/vim-hug-neovim-rpc'
"endif
"let g:deoplete#enable_at_startup = 1
"Plug 'zchee/deoplete-jedi'

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

"let g:airline_section_a = ''
"let g:airline_section_b = ''
"let g:airline_section_c = ''
let g:airline_section_x = ''
let g:airline_section_y = 'b%n'
"let g:airline_section_z = airline#section#create(['%3p%%', ' %l', ':%3v'])
let g:airline_section_z = '%p%%  %l/%L :%v'

"Nerdtree
let g:NERDTreeIgnore=['\.rbc$', '\~$', '\.pyc$', '\.db$', '\.sqlite$', '__pycache__']
let g:NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$', '\.bak$', '\~$']
let g:NERDTreeShowBookmarks=1
let g:nerdtree_tabs_focus_on_files=1
let g:NERDTreeMapOpenInTabSilent = '<RightMouse>'
let g:NERDTreeWinSize = 50

" Ctrl-P ignore
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

let g:ale_javascript_eslint_executable = 'npm run eslint --'
