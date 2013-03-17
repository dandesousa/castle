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
Bundle 'instant-markdown.vim'

" colors
Bundle 'desert-warm-256'

filetype plugin indent on
