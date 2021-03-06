"http://superuser.com/questions/319591/how-can-i-prevent-macvim-from-showing-os-x-find-replace-dialog-when-pressing-co
if has("gui_macvim")
  " Disable print shortcut for 'goto anything...'
  macmenu File.Print key=<nop>

  " Disable new tab shortcut for 'goto file...'
  macmenu File.New\ Tab key=<nop>

  " Move  with cmd+alt
  macm Window.Select\ Previous\ Tab  key=<D-S-LEFT>
  macm Window.Select\ Next\ Tab	   key=<D-S-RIGHT>

  " create a new menu item with title "New File" and bind it to cmd+n
  " new files will be created on a new tab
  an 10.190 File.New\ File <nop>
  macmenu File.New\ File action=addNewTab: key=<D-n>

endif

if has("gui_macvim")
  set guioptions=aAce
  let macvim_hig_shift_movement = 1
  set fuoptions=maxvert,maxhorz
  set noballooneval
  set columns=300

  " Automatically resize splits
  " when resizing MacVim window
  autocmd VimResized * wincmd =
  macmenu File.New\ Tab key=<nop>
elseif has("gui_gtk2")
  set guioptions-=T
endif
set transparency=0

syntax on

" Kill error bells
set vb t_vb=
