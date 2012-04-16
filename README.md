# dotfiles

## Vim

TODO

### Windows Setup

Navigate to your $HOME path and clone the repository

 git clone git@github.com:josephvano/dotfiles.git
 git submodule init
 git submodule update

Go to your vim installation path, mine is _c:/vim_

  mklink /d vimfiles $HOME/dotfiles/vim/.vim
  mklink .vimrc $HOME/dotfiles/vim/.vimrc

### How I got there
# Rename your **_vimrc** to **.vimrc**
# Rename your **_vimfiles_** to **.vim**

Modern windows vim installation understands .vimrc vs _vimrc
