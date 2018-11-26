if &cp || v:version < 700
  finish
endif

set rtp+=~/.vim/bundle/pathogen
execute pathogen#infect()
syntax on
filetype plugin indent on
