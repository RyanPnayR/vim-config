if &term =~# '^screen'
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif

if &term =~ '256color'
  set t_ut=
endif

"set t_Co=256
set termguicolors
"let g:onedark_termcolors=16
colo onedark
let g:airline_theme = 'onedark'

"if $GUI_VIM == "no"
  "colo gruvbox
  "let g:airline_theme = 'lucius'
"else
  "colo onedark
  "let g:airline_theme = 'onedark'
"endif
"colo gruvbox
"let g:airline_theme = 'lucius'
"
if exists('$TMUX')
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_SR = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=2\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_SR = "\<Esc>]50;CursorShape=2\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

if !has('nvim')
  set ttymouse=xterm2
  set viminfo='100,<50,s10,h,n~/.cache/viminfo
else
  set viminfo='100,<50,s10,h,n~/.cache/nviminfo
endif

" Think I need these for vim-fish
syntax enable
filetype plugin indent on

let g:netrw_home = '~/.cache'
set showmode            " Show current mode.
set ruler               " Show the line and column numbers of the cursor.
set number              " Show the line numbers on the left side.
set formatoptions+=o    " Continue comment marker in new lines.
set textwidth=0         " Hard-wrap long lines as you type them.
" Tab settings
set expandtab           " Insert spaces when TAB is pressed.
set tabstop=2           " Render TABs using this many spaces.
set shiftwidth=2        " Indentation amount for < and > commands.
" cmd-d duplicates line
map <D-d> yyp
set noerrorbells        " No beeps.
set modeline            " Enable modeline.
" set esckeys             " Cursor keys in insert mode.
set linespace=0         " Set line-spacing to minimum.
set nojoinspaces        " Prevents inserting two spaces after punctuation on a join (J)
set splitbelow          " Horizontal split below current.
set splitright          " Vertical split to right of current.
set laststatus=2
set colorcolumn=80

" Tell Vim which characters to show for expanded TABs,
" trailing whitespace, and end-of-lines. VERY useful!
if &listchars ==# 'eol:$'
  set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
endif
set list                " Show problematic characters.
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.db,*.sqlite

" Path/file expansion in colon-mode.
set wildmenu
set wildmode=list:longest
set wildchar=<TAB>

set backspace=indent,eol,start
set guifont=Monaco:h11
set noswapfile
set complete-=i
set smarttab
set ttyfast
set noautoindent
set nocindent

set ttimeout
set ttimeoutlen=100

" Search
set hlsearch
set ignorecase
set smartcase
set incsearch
set gdefault
set magic

" Formatting
set showcmd             " Show (partial) command in status line.
set showmatch           " Show matching brackets.

" Filetype settings
autocmd Filetype gitcommit setlocal spell textwidth=72
autocmd FileType javascript setlocal expandtab sw=2 ts=2 sts=2
autocmd FileType json setlocal expandtab sw=2 ts=2 sts=2
autocmd FileType python setlocal expandtab sw=4 ts=4 sts=4
autocmd FileType c setlocal expandtab sw=4 ts=4 sts=4
autocmd FileType php setlocal expandtab sw=4 ts=4 sts=4
autocmd FileType phtml setlocal expandtab sw=2 ts=2 sts=2
autocmd BufEnter *.phtml :setlocal filetype=phtml
autocmd BufNewFile,BufReadPost *.jade set filetype=pug
autocmd FileType jade setlocal expandtab sw=2 ts=2 sts=2
autocmd FileType html setlocal expandtab sw=2 ts=2 sts=2
autocmd FileType less setlocal expandtab sw=2 ts=2 sts=2
autocmd FileType scss setlocal expandtab sw=2 ts=2 sts=2
autocmd FileType scss set iskeyword+=-
autocmd FileType htmldjango setlocal expandtab sw=2 ts=2 sts=2
autocmd FileType css setlocal expandtab sw=2 ts=2 sts=2

" Custom surrounds
let g:surround_custom_mapping = {}
let g:surround_custom_mapping.sh = {
      \ '4': "$(\r)",
      \ '$': "${\r}",
      \ }

:nmap <silent> <leader>d <Plug>DashSearch
