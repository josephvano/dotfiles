ZSH_DISABLE_COMPFIX=true
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
# Antigen

# add ANTIGEN_MUTEX=false to avoid process is already running
# see https://github.com/zsh-users/antigen/issues/543
ANTIGEN_MUTEX=false
source "$HOME/.antigen/antigen.zsh"

# Load the oh-my-zsh's library
antigen use oh-my-zsh

# Path to your oh-my-zsh installation.
export ZSH=/Users/jvano/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  kubectl
  osx
)

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

export EDITOR='vim'

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias cl="clear"
alias ll='ls -hl'
alias l.='ls -dhl .*'
alias so='source'

export HISTCONTROL=ignoredups
export HISTSIZE=1000

# Antigen bundles
source ~/.antigen/antigen.zsh

#antigen bundle git
#antigen bundle heroku
antigen bundle npm
antigen bundle pip
antigen bundle brew
#antigen bundle github

# Antigen stuff
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
#antigen theme ys
#antigen theme agnoster
antigen theme https://github.com/denysdovhan/spaceship-zsh-theme spaceship
antigen apply

# zsh-completions
fpath=(/usr/local/share/zsh-completions $fpath)
source ~/.antigen/bundles/zsh-users/zsh-autosuggestions/zsh-autosuggestions.zsh

# Go env vars
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
