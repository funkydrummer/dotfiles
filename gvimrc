" alternative http://www.vim.org/scripts/script.php?script_id=1343
au BufWritePost *.c,*.cpp,*.h,*.rb silent! !ctags -R & 
