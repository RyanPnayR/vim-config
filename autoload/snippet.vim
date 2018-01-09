function! s:try_insert(skel)
  execute "normal! i" . a:skel . "\<C-r>=UltiSnips#ExpandSnippet()\<CR>"

  if g:ulti_expand_res == 0
    silent! undo
  endif

  return g:ulti_expand_res
endfunction

function! snippet#Insert(snip)
  let filename = expand('%')

  " Abort on non-empty buffer or extant file
  if !(line('$') == 1 && getline('$') == '') || filereadable(filename)
    return
  endif

  call s:try_insert(a:snip)
endfunction

function! snippet#InsertSkeleton() abort
  call snippet#Insert('_skel')
endfunction

function! snippet#FishFunction() abort
  call snippet#Insert('func')
endfunction
