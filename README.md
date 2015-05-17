# dotfiles

## Vim

###Install Python
Install last version of 2.7 series ([Python 2.7.8] (http://www.python.org/download/releases/2.7.8/) at the time of this writing). Make sure that you pick correct version of Python to match the architecture of Vim.
For example, if you installed Vim using the default Windows installer, you will need to install the x86 (32 bit!) version of Python.

Verify that Python is working inside Vim with

```vim
:echo has('python')
```

### Windows Setup

Navigate to your $HOME path and clone the repository

    git clone git@github.com:josephvano/dotfiles.git
    cd dotfiles
    git submodule init
    git submodule update

Go to your vim installation path, mine is _c:/vim_ and create symbolic links to vimfiles and .vimrc

    cd c:/vim
    mklink /d vimfiles $HOME/dotfiles/vim/.vim
    mklink .vimrc $HOME/dotfiles/vim/.vimrc
    mklink .gvimrc $HOME/dotfiles/vim/.gvimrc

### Adding new plugin as submodule

This assumes you are using pathogen

    git submodule add git://[path] vim/.vim/bundle/[plugin]
    git submodule init
    git submodule update

### Plugin requirements

#### omnisharp

#####Windows
```dosbatch
c:\
cd c:\Users\username\vimfiles\bundle
git clone https://github.com/OmniSharp/omnisharp-vim.git
cd Omnisharp
git submodule update --init --recursive
cd server
msbuild
```

#####OSX / Linux
Requires a minimum of Mono 3.0.12 - If you absolutely must use mono 2.10 then checkout the mono-2.10.8 tag. [Updating mono on ubuntu](https://github.com/nosami/OmniSharpServer/wiki)
```sh
cd ~/.vim/bundle
git clone https://github.com/OmniSharp/omnisharp-vim.git
cd omnisharp-vim
git submodule update --init --recursive
cd server
xbuild
```

Note that if you have Mono installed outside of the ["standard" paths](https://github.com/OmniSharp/omnisharp-server/blob/master/OmniSharp/Solution/AssemblySearch.cs#L35-L52) (for example, if it is installed via Boxen where your homebrew root is not `/usr/local/`, you'll need to either add the path to the `AssemblySearch.cs` before building, or symlink your installation to one of the standard paths.

######(optional) Install vim-dispatch
The vim plugin [vim-dispatch] (https://github.com/tpope/vim-dispatch) is needed to make Omnisharp start the server automatically and for running asynchronous builds.
Use your favourite way to install it.

######(optional) Install syntastic
The vim plugin [syntastic] (https://github.com/scrooloose/syntastic) is needed for displaying code issues and syntax errors.
Use your favourite way to install it.

######(optional) Install ctrlp.vim or unite.vim
[CtrlP](https://github.com/ctrlpvim/ctrlp.vim) or [unite.vim](https://github.com/Shougo/unite.vim) is needed if you want to use the Code Actions, Find Type and Find Symbol features.
If you have installed both, you can choose one by `g:OmniSharp_selector_ui` variable.

```vim
let g:OmniSharp_selector_ui = 'unite'  " Use unite.vim
let g:OmniSharp_selector_ui = 'ctrlp'  " Use ctrlp.vim
```

#### snipmate

I had to specify the path of the snippets folder in the .vimrc folder explicitly.

If you set it up in your $HOME folder, it should work out of the box.

    let g:snippets_dir = "$HOME/dotfiles/vim/.vim/bundle/snipmate/snippets"

#### Ack

I installed Perl on my machine and Ack

    cpan App::Ack

#### CoffeeScript
I have nodejs on my machine with npm (node package manager) and just installed CoffeeScript package

Grab latest nodejs at http://nodejs.org/ and it bundles the _npm_ with Windows installer

    npm install coffee-script

#### Sparkup

Couldn't get pathogen to detect and install plugin. I just had to do the manual way of copying _html_ folder to the _ftplugin_ folder.

Another caveat is I have python 2.5 on my machine. I tried it with Python 3.x and it was not working correctly.

### How I got there
1. Rename your **_vimrc** to **.vimrc**
2. Rename your **vimfiles** to **.vim**

Modern windows vim installation understands .vimrc vs _vimrc
