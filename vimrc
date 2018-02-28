set nocompatible              " be iMproved
filetype off                  " required!

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
" required!
Plugin 'VundleVim/Vundle.vim'

" My bundles here:
"
Plugin 'yegappan/greplace'
Plugin 'tomasr/molokai'
Plugin 'mileszs/ack.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'ervandew/supertab'
Plugin 'jistr/vim-nerdtree-tabs'

Plugin 'tpope/vim-fugitive'

Plugin 'rking/ag.vim'

Plugin 'pangloss/vim-javascript'
Plugin 'heartsentwined/vim-emblem'
Plugin 'slim-template/vim-slim.git'

Plugin 'altercation/vim-colors-solarized'

Plugin 'ddollar/nerdcommenter'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-endwise'
Plugin 'vim-ruby/vim-ruby'
Plugin 'vim-airline'
Plugin 'ngmy/vim-rubocop'
Plugin 'kchmck/vim-coffee-script'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'flazz/vim-colorschemes'
Plugin 'godlygeek/tabular'
Plugin 'terryma/vim-multiple-cursors'

"Show \"Match 123 of 456 /search term/\" in Vim searches.
Plugin 'henrik/vim-indexed-search'

" Plugin 'dsawardekar/portkey'
" Plugin 'dsawardekar/ember.vim'
" Plugin 'iain/vim-rspec'
" Plugin 'thoughtbot/vim-rspec'

" quoting/parenthesizing made simple
" Plugin 'tpope/vim-surround'

" Plugin 'tpope/vim-haml'
" Plugin 'kchmck/vim-coffee-script'

call vundle#end()
filetype plugin indent on

syntax enable

autocmd BufNewFile,BufReadPost *.md,*.mdown,*.mdwn,*.mmd set filetype=markdown

" Trim white spaces
function! StripTrailingWhiteSpace()
  " skip for markdown
  if &filetype =~ 'markdown'
    return
  endif
  %s/\s\+$//e
endfunction
autocmd BufWritePre * call StripTrailingWhiteSpace()

filetype plugin indent on     " required!

let mapleader = ","

set ruler

set tabstop=2 shiftwidth=2 softtabstop=2 expandtab
set noswapfile
set scrolloff=3
set cursorline

set relativenumber
set number

syntax enable
" set background=dark
" colorscheme tatami
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

" Fugitive mappings
nnoremap <Leader>gs :Gstatus<CR>
nnoremap <Leader>gd :Gdiff<CR>
nnoremap <Leader>gb :Gblame<CR>
" nnoremap <Leader>gL :exe ':!cd ' . expand('%:p:h') . '; git la'<CR>
" nnoremap <Leader>gl :exe ':!cd ' . expand('%:p:h') . '; git las'<CR>
" nnoremap <Leader>gh :Silent Glog<CR>
" nnoremap <Leader>gH :Silent Glog<CR>:set nofoldenable<CR>
nnoremap <Leader>gr :Gread<CR>
" nnoremap <Leader>gw :Gwrite<CR>
" nnoremap <Leader>gp :Git push<CR>
" nnoremap <Leader>g- :Silent Git stash<CR>:e<CR>
" nnoremap <Leader>g+ :Silent Git stash pop<CR>:e<CR>

" Wrap
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel
nnoremap <leader>[ viw<esc>a]<esc>hbi[<esc>lel
nnoremap <leader>{ viw<esc>a}<esc>hbi{<esc>lel
nnoremap <leader>( viw<esc>a)<esc>hbi(<esc>lel
nnoremap <leader>d viw<esc>A.inspect<esc>Iraise <esc>lel

" make the command mode less annoying
cnoremap <c-a> <Home>
cnoremap <c-e> <End>
cnoremap <c-k> <Up>
cnoremap <c-j> <Down>
cnoremap <c-h> <Left>
cnoremap <c-l> <Right>
cnoremap <c-d> <Del>

" provide tab completion for CSS class and ID names with dash
set iskeyword+=-

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
map ,je :CtrlP ember-frontend<CR>
" map ,je :CtrlP app/assets/javascripts<CR>

" ________________
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
" set tags=your_gem_tags_file_path,./tags,tags,;

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

function PrevBuffer()
  b#
endfunction

command WQ wq
command Wq wq
command W w
command Q q

set wildmenu

" from https://github.com/spf13/spf13-vim/blob/master/.vimrc
if has('statusline')
  set laststatus=2
  " Broken down into easily includeable segments
  set statusline=%<%f\    " Filename
  set statusline+=%w%h%m%r " Options
  set statusline+=%{fugitive#statusline()} "  Git Hotness
  set statusline+=\ [%{&ff}/%Y]            " filetype
  set statusline+=\ [%{getcwd()}]          " current dir
  set statusline+=%#warningmsg#
"  set statusline+=%{SyntasticStatuslineFlag()}
  set statusline+=%*
  let g:syntastic_enable_signs=1
  set statusline+=%=%-14.(%l,%c%V%)\ %p%%  " Right aligned file nav info
endif

" leader
"
" tabonly
map <leader>q :tabo<CR>

" NERDTreeTabsToggle
map <leader>n :NERDTreeTabsToggle<CR>

nnoremap <leader>e  :e!<enter>

map <space> viw
nnoremap <leader>: viw<esc>hbi:<esc>lel

" Indenting
map <leader>i mmgg=G`m<CR>

" Yank entire file
map <leader>y ggyGjk

" End line with );
map <leader>) s/$/\);/g<CR>

" tabonly
map <leader>q :tabo<CR>
" NERDTreeToggle
map <leader>q :tabo<CR>

" Prefer single-quoted strings
map <leader>' :%s/"/'/gc<CR>

" get rid of hashrocket
map <leader>h :%s/:\([^=,'"]*\) =>/\1:/g<CR>
" and with interactive mode
map <leader>hi :%s/:\([^=,'"]*\) =>/\1:/gc<CR>

map <leader>p :call PrevBuffer()<CR>

" Display extra whitespace
set list listchars=tab:»·,trail:·

set colorcolumn=80

let g:ruby_indent_access_modifier_style="indent"

" Ruby
autocmd Filetype ruby iabbr init- def initialize<CR>end<ESC>?initialize<ESC>$a
autocmd Filetype ruby iabbr cls- class<CR>end<ESC>?class<ESC>$a
autocmd Filetype ruby iabbr mod- module<CR>end<ESC>?module<ESC>$a
autocmd Filetype ruby iabbr d= def<CR>end<ESC>?def<ESC>$a
autocmd Filetype ruby iabbr d_ do<CR>end<ESC>O
autocmd Filetype ruby iabbr d- do \|\|<CR>end<ESC>k$i
autocmd Filetype ruby iabbr {- { \|A\| }<ESC>FA"_xi
autocmd Filetype ruby iabbr #- #{}<ESC>'_ci{
autocmd Filetype ruby iabbr rq- require ''<ESC>i

" ERB
autocmd Filetype eruby iabbr rt+ <% woo %><ESC>Fw<ESC>"_ciw
autocmd Filetype eruby iabbr rt- <% woo%><ESC>Fw<ESC>"_ciw
autocmd Filetype eruby iabbr rt= <%= woo%><ESC>Fw<ESC>"_ciw
autocmd Filetype eruby iabbr rtc <%# woo%><ESC>Fw<ESC>"_ciw

" Rspec yea
autocmd Filetype ruby iabbr dsc- describe  do<CR>end<ESC>?describe<ESC>wi
autocmd Filetype ruby iabbr it- it '' do<CR>end<ESC>?''<ESC>a
autocmd Filetype ruby iabbr cnt- context '' do<CR>end<ESC>?''<ESC>a
autocmd Filetype ruby iabbr sub- subject '' do<CR>end<ESC>?''<ESC>a
autocmd Filetype ruby iabbr lt- let : { }<ESC>?:<ESC>a

" minitest
autocmd Filetype ruby iabbr test- test '' do<CR>end<ESC>?''<ESC>a

" Copy filename to clipboard (get buffer path)
nmap ,ls :let @*=expand("%")<CR>
nmap ,ll :let @*=expand("%:p")<CR>

" set incsearch
set hlsearch

" set wildignore+=*/.gem/*,*/vendor/Plug/*,*/tmp/*,node_modules/*,bower_components/*,log/*,*/public/system*,*.orig,*.o,vendor/bunlde,ember-frontend/node_modules/*,ember-frontend/bower_components/*,ember-frontend/tmp/*,app/*,

" set wildignore+=ember-frontend/*
"let g:ctrlp_custom_ignore = '\v[\/]\.(DS_Storegit|hg|svn|optimized|compiled|node_modules|ember-frontend)$'
"
let g:ctrlp_custom_ignore = '\v[\/](node_modules|bower_components|target|dist|log|tmp|public|system|budle|vendor)|(\.(swp|ico|git|svn))$'
" tags

" Tabs
nnoremap H gT
nnoremap L gt

" Mappings to move lines
nnoremap <D-j> :m .+1<CR>==
nnoremap <D-k> :m .-2<CR>==
inoremap <D-j> <Esc>:m .+1<CR>==gi
inoremap <D-k> <Esc>:m .-2<CR>==gi
vnoremap <D-j> :m '>+1<CR>gv=gv
vnoremap <D-k> :m '<-2<CR>gv=gv


" RSpec.vim mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

" let g:rspec_command = "rspec --drb {spec}"
let g:rspec_runner = "os_x_iterm2"
