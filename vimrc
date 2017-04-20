" ----------
" Vim Config
" ----------
"
"
" How this works:
"
" This file is minimal.  Most of the vim settings and initialization is in
" several files in .vim/init.  This makes it easier to find things and to
" merge between branches and repos.
"
" Please do not add configuration to this file, unless it *really* needs to
" come first or last, like Vundle and sourcing the machine-local config.
" Instead, add it to one of the files in .vim/init, or create a new one.

set nocompatible               " be iMproved
filetype off                   " required!

let need_to_install_plugins=0
if empty(system("grep lazy_load ~/.vim/bundle/Vundle.vim/autoload/vundle.vim"))
  echoerr "Vundle plugins are not installed. Please run ~/.vim/bin/install"
else
  set rtp+=~/.vim/bundle/Vundle.vim

  call vundle#begin()

  Plugin 'VundleVim/Vundle.vim'

  "
  " Colorschemes
  "
  Plugin 'Colour-Sampler-Pack'
  Plugin 'alessandroyorba/sidonia'
  Plugin 'altercation/vim-colors-solarized'
  Plugin 'bcicen/vim-vice'
  Plugin 'candycode.vim'
  Plugin 'chriskempson/base16-vim'
  Plugin 'chriskempson/vim-tomorrow-theme'
  Plugin 'flazz/vim-colorschemes'
  Plugin 'molokai'
  Plugin 'morhetz/gruvbox'
  Plugin 'tpope/vim-vividchalk'
  Plugin 'wgibbs/vim-irblack'

  "
  " Ruby / Rails
  "
  Plugin 'tpope/vim-rails'
  Plugin 'tpope/vim-endwise'
  Plugin 'ecomba/vim-ruby-refactoring'
  Plugin 'jgdavey/vim-blockle'
  Plugin 'tpope/vim-rbenv'
  Plugin 'tpope/vim-rake'

  "
  " General Editing
  "
  Plugin 'tpope/vim-repeat'
  Plugin 'tpope/vim-surround'
  Plugin 'scrooloose/nerdcommenter'
  Plugin 'tpope/vim-unimpaired'
  Plugin 'godlygeek/tabular'
  Plugin 'vim-airline/vim-airline'
  Plugin 'vim-airline/vim-airline-themes'
  Plugin 'ervandew/supertab'
  Plugin 'nertzy/j-split'
  Plugin 'matt-royal/diffthese'
  Plugin 'nertzy/edit-plus'
  Plugin 'brysgo/quickfixfix'
  Plugin 'vim-scripts/L9'
  Plugin 'MarcWeber/vim-addon-mw-utils'
  Plugin 'tomtom/tlib_vim'
  Plugin 'YankRing.vim'
  Plugin 'editorconfig/editorconfig-vim'
  Plugin 'tpope/vim-projectionist'
  Plugin 'kien/rainbow_parentheses.vim'

  "
  " Window Management
  "
  Plugin 'ZoomWin'

  "
  " Searching
  "
  Plugin 'epmatsw/ag.vim'
  Plugin 'kien/ctrlp.vim'

  "
  " Navigation
  "
  Plugin 'scrooloose/nerdtree'

  "
  " Languages
  "
  Plugin 'vim-ruby/vim-ruby'
  Plugin 'pangloss/vim-javascript'
  Plugin 'plasticboy/vim-markdown'
  Plugin 'slim-template/vim-slim'
  Plugin 'nono/vim-handlebars'
  Plugin 'kchmck/vim-coffee-script'
  Plugin 'tpope/vim-haml'
  Plugin 'tpope/vim-cucumber'
  Plugin 'quentindecock/vim-cucumber-align-pipes'
  Plugin 'juvenn/mustache.vim'
  Plugin 'fatih/vim-go'
  Plugin 'rosstimson/scala-vim-support'
  Plugin 'guns/vim-clojure-static'
  Plugin 'chrisbra/csv.vim'
  Plugin 'elzr/vim-json'
  Plugin 'briancollins/vim-jst'
  Plugin 'digitaltoad/vim-jade'
  Plugin 'mxw/vim-jsx'
  Plugin 'lambdatoast/elm.vim'

  "
  " Development Tool Integration
  "
  Plugin 'tpope/vim-fugitive'
  Plugin 'sjl/vitality.vim'

  call vundle#end()

  filetype plugin indent on

  syntax on

  runtime! init/**.vim

  if filereadable($HOME . "/.vimrc.local")
    source ~/.vimrc.local
  endif
endif
