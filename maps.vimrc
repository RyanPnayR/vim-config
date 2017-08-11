map <C-u> :NERDTreeToggle<CR>
nmap <C-c> :NERDTreeCWD<CR>
" CtrlP
" Open file menu
nnoremap <Leader>o :CtrlP<CR>
" Open buffer menu
nnoremap <Leader>b :CtrlPBuffer<CR>
" Open most recently used files
nnoremap <Leader>f :CtrlPMRUFiles<CR>

nnoremap ; :
nnoremap , ;
nnoremap <leader>h :noh<CR>
nnoremap <space> <nop>
map <space> <leader>
filetype plugin on
filetype plugin indent on
syntax enable

"Enter to go to EOF and backspace to go to start
nnoremap <CR> G
nnoremap <BS> gg
" Stop cursor from jumping over wrapped lines
nnoremap j gj
nnoremap k gk
" Make HOME and END behave like shell
inoremap <C-E> <End>
inoremap <C-A> <Home>
" Indent lines with cmd+[ and cmd+]
nmap <D-]> >>
nmap <D-[> <<
vmap <D-[> <gv
vmap <D-]> >gv

nnoremap <leader>v <C-w>v<C-w>l
nnoremap <leader>s <C-w>s
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
