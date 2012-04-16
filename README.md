# dotfiles

## Vim

TODO

### Windows Setup

Navigate to your $HOME path and clone the repository

 git clone git@github.com:josephvano/dotfiles.git
 git submodule init
 git submodule update

Go to your vim installation path, mine is _c:/vim_ and create symbolic links to vimfiles and .vimrc

  mklink /d vimfiles $HOME/dotfiles/vim/.vim
  mklink .vimrc $HOME/dotfiles/vim/.vimrc

### How I got there
1. Rename your **_vimrc** to **.vimrc**
2. Rename your **vimfiles** to **.vim**

Modern windows vim installation understands .vimrc vs _vimrc
