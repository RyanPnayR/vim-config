if !exists('g:did_plugin_ultisnips')
  finish
endif

augroup ultisnips_custom
  autocmd!
  autocmd BufNewFile * silent! call snippet#InsertSkeleton()
augroup END
