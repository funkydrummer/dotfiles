set nocompatible              " be iMproved
filetype off                  " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My bundles here:
"
Bundle 'tomasr/molokai'
Bundle 'mileszs/ack.vim'
Bundle 'kien/ctrlp.vim'
Bundle 'ddollar/nerdcommenter'
Bundle 'scrooloose/nerdtree'
Bundle 'ervandew/supertab'
Bundle 'jistr/vim-nerdtree-tabs'

" wisely add 'end' in ruby, endfunction/endif/more in vim script, etc
Bundle 'tpope/vim-endwise'

" quoting/parenthesizing made simple
Bundle 'tpope/vim-surround'

Bundle 'tpope/vim-haml'
Bundle 'kchmck/vim-coffee-script'

filetype plugin indent on     " required!

let mapleader = ","

set tabstop=2 shiftwidth=2 softtabstop=2 expandtab
set noswapfile
set scrolloff=3
set cursorline
set number

color molokai
set guifont=Monaco:h12

" Undo
set undofile                " Save undo's after file closes
set undodir=$HOME/.vimundo " where to save undo histories
set undolevels=1000         " How many undos
set undoreload=10000        " number of lines to save for undo

" Mappings
inoremap <esc> <nop>
inoremap jk <esc>

nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

nnoremap <c-h>      <c-w>h
nnoremap <c-j>      <c-w>j
nnoremap <c-k>      <c-w>k
nnoremap <c-l>      <c-w>l

nnoremap j gj
nnoremap k gk

nnoremap <leader>e  :e!<enter>

map <space> viw
nnoremap <leader>: viw<esc>hbi:<esc>lel

" Wrap
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel
nnoremap <leader>[ viw<esc>a]<esc>hbi[<esc>lel
nnoremap <leader>{ viw<esc>a}<esc>hbi{<esc>lel
nnoremap <leader>( viw<esc>a)<esc>hbi(<esc>lel

" make the command mode less annoying
cnoremap <c-a> <Home>
cnoremap <c-e> <End>
cnoremap <c-k> <Up>
cnoremap <c-j> <Down>
cnoremap <c-h> <Left>
cnoremap <c-l> <Right>
cnoremap <c-d> <Del>

" Idea from :
" http://www.charlietanksley.net/blog/blog/2011/10/18/vim-navigation-with-lustyexplorer-and-lustyjuggler/
" " Open CtrlP starting from a particular path, making it much
" " more likely to find the correct thing first. mnemonic 'jump to
" [something]'
map ,jm :CtrlP app/models<CR>
map ,jc :CtrlP app/controllers<CR>
map ,jv :CtrlP app/views<CR>
map ,jh :CtrlP app/helpers<CR>
map ,jl :CtrlP lib<CR>
map ,ja :CtrlP app/assets<CR>
map ,jp :CtrlP public<CR>
map ,js :CtrlP spec<CR>
map ,jf :CtrlP fast_spec<CR>
map ,jd :CtrlP db<CR>
map ,jC :CtrlP config<CR>
map ,jV :CtrlP vendor<CR>
map ,jF :CtrlP factories<CR>
map ,jT :CtrlP test<CR>

let g:ackprg = 'ag --nogroup --nocolor --column'

" Borrowed from vimcasts, super useful----------------------------------------
" " Bubble single lines
"nmap <C-k> ddkP
"nmap <C-j> ddp

" Bubble multiple lines
"vmap <C-k> xkP`[V`]
"vmap <C-j> xp`[V`]

" make tab key more better
noremap <tab> v>
noremap <s-tab> v<
vnoremap <tab> >gv
vnoremap <s-tab> <gv

" and backspace as well
noremap <backspace> v<
noremap <s-backspace> v>
vnoremap <backspace> <gv
vnoremap <s-backspace> >gv

" Ctags
set tags=your_gem_tags_file_path,./tags,tags,;

" Switch between the last two files
nnoremap <leader><leader> <c-^>

" https://github.com/thoughtbot/dotfiles/blob/master/vimrc

" Tell vim to remember certain things when we exit
"  '10  :  marks will be remembered for up to 10 previously edited files
"  "100 :  will save up to 100 lines for each register
"  :20  :  up to 20 lines of command-line history will be remembered
"  %    :  saves and restores the buffer list
"  n... :  where to save the viminfo files
set viminfo='10,\"100,:20,%,n~/.viminfo

function! ResCur()
  if line("'\"") <= line("$")
    normal! g`"
    return 1
  endif
endfunction

augroup resCur
  autocmd!
  autocmd BufWinEnter * call ResCur()
augroup END

" Customizations
map <D-F> :Ack<space>

" NERDCommenter mappings
if has("gui_macvim") && has("gui_running")
  map <D-/> <plug>NERDCommenterToggle<CR>
  imap <D-/> jk<plug>NERDCommenterToggle<CR>i
else
  map <leader>/' <plug>NERDCommenterToggle<CR>
endif
