# dotfiles

## Vim

### Install Python
Install last version of 2.7 series ([Python 2.7.8] (http://www.python.org/download/releases/2.7.8/) at the time of this writing). Make sure that you pick correct version of Python to match the architecture of Vim.
For example, if you installed Vim using the default Windows installer, you will need to install the x86 (32 bit!) version of Python.

Verify that Python is working inside Vim with

```vim
:echo has('python')
```

### Setup

```
git clone git@github.com:josephvano/dotfiles.git
cd dotfiles
git submodule init
git submodule update
```

### Adding new plugin as submodule

This assumes you are using pathogen

    git submodule add git://[path] vim/.vim/bundle/[plugin]
    git submodule init
    git submodule update

### Plugin requirements

###### (optional) Install vim-dispatch
The vim plugin [vim-dispatch] (https://github.com/tpope/vim-dispatch) is needed to make Omnisharp start the server automatically and for running asynchronous builds.
Use your favourite way to install it.

###### (optional) Install syntastic
The vim plugin [syntastic] (https://github.com/scrooloose/syntastic) is needed for displaying code issues and syntax errors.
Use your favourite way to install it.

###### (optional) Install ctrlp.vim or unite.vim
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

#### Sparkup

Couldn't get pathogen to detect and install plugin. I just had to do the manual way of copying _html_ folder to the _ftplugin_ folder.

Another caveat is I have python 2.5 on my machine. I tried it with Python 3.x and it was not working correctly.

### How I got there
1. Rename your **_vimrc** to **.vimrc**
2. Rename your **vimfiles** to **.vim**

Modern windows vim installation understands .vimrc vs _vimrc

## Typescript IDE like environment

### tsuquyomi
https://github.com/Quramy/tsuquyomi

```bash
npm install -g typescript
```
