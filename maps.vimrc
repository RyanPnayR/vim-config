map <C-u> :NERDTreeToggle<CR>
nmap <C-c> :NERDTreeCWD<CR>

map <Leader><Space> <Plug>(easymotion-prefix)

" Folding
nnoremap <Leader>a za
nnoremap <Leader>r zR
nnoremap <Leader>m zM
nnoremap <Leader>O zO
nnoremap <Leader>o zO
nnoremap <Leader>j zj
nnoremap <Leader>k zk

" CtrlP
" Open file menu
nnoremap <Leader>p :CtrlP<CR>
" Open buffer menu
nnoremap <Leader>b :CtrlPBuffer<CR>
" Open most recently used files
nnoremap <Leader>f :CtrlPMRUFiles<CR>

let g:UltiSnipsExpandTrigger = "<C-S>"

nnoremap ; :
nnoremap , ;
nnoremap " ,
vnoremap , ;
vnoremap " ,
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

" Scroll up and down a bit faster
nnoremap <C-e> 5<C-e>
nnoremap <C-y> 5<C-y>
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
