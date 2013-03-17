" URL: http://vim.wikia.com/wiki/Example_vimrc
" Authors: http://vim.wikia.com/wiki/Vim_on_Freenode
" Description: A minimal, but feature rich, example .vimrc. If you are a
"              newbie, basing your first .vimrc on this file is a good choice.
"              If you're a more advanced user, building your own .vimrc based
"              on this file is still a good idea.
"

" vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" manage vundle -- required
Bundle 'gmarik/vundle'

" ADD Bundles below
Bundle 'Lokaltog/powerline'
set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim

Bundle 'AutoComplPop'
Bundle 'Markdown-syntax'
Bundle 'minibufexpl.vim'
Bundle 'TaskList.vim'
"Bundle 'greyblake/vim-preview'
Bundle 'instant-markdown.vim'

" colors
Bundle 'desert-warm-256'

filetype plugin indent on
" end vundle

runtime! init/**.vim
