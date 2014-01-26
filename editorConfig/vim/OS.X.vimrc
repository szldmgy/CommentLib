"!
" OS.X.vimrc
" v1.1
" Vim config list for OS X, MacVim.
"
" Created by Ju2ender on 2014-01-26 14:24.
" Copyright (c) 2014 Ju2ender. All rights reserved.
" Released under the MIT license.
" https://github.com/Ju2ender/CommentLib/blob/master/LICENSE 

" Save the config to ~/.vimrc, if not exist create it

if has('gui_running')
  " Set color scheme
  " Put color scheme file (*.vim) to ~/.vim/colors folder
  " colo is short for "colorscheme"
  colo molokai

  " set font family and size
  set guifont=Monaco:h12

  " show line number
  set number

  " size of a hard tabstop
  set tabstop=2

  " size of an "indent"
  set shiftwidth=2

  " a combination of spaces and tabs are used to simulate tab stops at a width
  " other than the (hard)tabstop
  set softtabstop=2

  " make "tab" insert indents instead of tabs at the beginning of a line
  set smarttab

  " always uses spaces instead of tab characters
  set expandtab

  set autoindent

  set smartindent

endif

" Show a ruler at 81 char.
" This will give your a gray line at 81 char.
if exists('+colorcolumn')
  set colorcolumn=81
else
   au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>81v.\+', -1)
endif

