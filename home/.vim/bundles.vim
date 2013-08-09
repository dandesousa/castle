set nocompatible
filetype off
let g:vundle_default_git_proto = 'http'
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" manage vundle -- required
Bundle 'gmarik/vundle'

" ADD Bundles below
Bundle 'vim-neatstatus'
Bundle 'a.vim'
"Bundle 'AutoComplPop'
Bundle 'DoxygenToolkit.vim'
Bundle 'Markdown-syntax'
Bundle 'MatchTag'
Bundle 'minibufexpl.vim'
Bundle 'surround.vim'
Bundle 'TaskList.vim'
Bundle 'Jinja'
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'UltiSnips'
Bundle 'klen/python-mode'
Bundle 'Yggdroot/indentLine' 
Bundle 'scrooloose/syntastic'

" colors
Bundle 'desert-warm-256'

filetype plugin indent on
