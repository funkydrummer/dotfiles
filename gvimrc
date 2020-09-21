set background=light
" set background=dark
colorscheme solarized

" A few experimental colorschemes
colorscheme blazer
" colorscheme amcolors
" colorscheme molokai
" colorscheme tatami
" colorscheme basic-dark

call togglebg#map("<F5>")

" No audible bell
autocmd! GUIEnter * set vb t_vb=

" alternative http://www.vim.org/scripts/script.php?script_id=1343
au BufWritePost *.c,*.cpp,*.h,*.rb silent! !ctags -R &