# castle

This is my homesick compatible repository, storage space for all my associated dotfiles.

## Installation 

You can following the instructions for [technicalpickles/homesick](https://github.com/technicalpickles/homesick):

```
# clones this repo
homesick clone dandesousa/castle

# load vim plugins
vim -u .vim/bundles.vim +BundleInstall +qall
```

## Caveats

Because homesick is storing all your vimfiles in git, you want to avoid putting any git submodules in your repo (this defeats the purpose of vundle and causes problems later).

If you are setting this up, I recommend using the above gitignore, cloning vundle and adding that as a submodule with -f.

Some of the plugins may require extra configuration or package dependencies not handled by vundle. For non-working features, please see the appropriate github repo. In the future I will attempt to use a configuration tool to make sure these all get installed. 

## Credits

Special thanks goes to [fsproru / vimfiles](https://github.com/fsproru/vimfiles) who provided examples for solving my vim / vundle problem.

Also to [gmarik / vundle](https://github.com/gmarik/vundle) for an amazing tool.
