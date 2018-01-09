if !exists('g:did_plugin_ultisnips')
  finish
endif

augroup ultisnips_custom
  autocmd!
  autocmd BufNewFile * silent! call snippet#InsertSkeleton()
augroup END

augroup ultisnips_custom_fish
  autocmd!
  autocmd BufNewFile ~/.config/fish/functions/*.fish silent!
        \ call snippet#FishFunction()
augroup END
