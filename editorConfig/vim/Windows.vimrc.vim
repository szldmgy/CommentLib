"!
" Windows.vimrc.vim
" v1.1.1
" Vim config file for Windows (gVim - Vim with GUI).
"
" Created by Ju2ender on 2014-01-26 14:10.
" Copyright (c) 2014 Ju2ender. All rights reserved.
" Released under the MIT license.
" https://github.com/Ju2ender/CommentLib/blob/master/LICENSE

" Put these settings in your _vimrc file.
" In my computer, I save it in D:\Program Files\Vim\_vimrc 

" Change gVim menu language to English
language mes en
set langmenu=en_US.UTF-8

" Set vim open file with UTF-8 encoding
set enc=UTF-8
set tenc=UTF-8
set fenc=UTF-8
set fencs=UTF-8,usc-born

set directory=.,$TEMP

if has('gui_running')
  " Set color scheme
  " Put color schem file (*.vim) to D:\Program Files\Vim\vimfiles\colors
  " colo is short for "colorscheme"
  colo molokai

  " Set font family and font size
  set guifont=consolas:h9

  " Show line number
  set number

  " Size of a hard tabstop
  set tabstop=2

  " Size of an "indent"
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

  " Set window size, 85 chars, 50 lines.
  winsize 100 50

  " Init pathogen plugin
  execute pathogen#infect()

  " Remove gVim's toolbar
  set guioptions-=T

  " Remove gVim's left scroll bar
  set guioptions-=L

  " Remove gVim's right scroll bar
  set guioptions-=r

endif

" Show a ruler at 81 char.
" This will give you a red line at 81 char.
if exists('+colorcolumn')
  set colorcolumn=81
else
   au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>81v.\+', -1)
endif

