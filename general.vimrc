if has("gui_macvim")
  set t_Co=256
  set termguicolors
  colo onedark
endif

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
set esckeys             " Cursor keys in insert mode.
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

:nmap <silent> <leader>d <Plug>DashSearch
