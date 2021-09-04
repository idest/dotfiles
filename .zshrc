# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH=/home/idest/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"
DEFAULT_USER="idest"

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
# ENABLE_CORRECTION="true"

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
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


#################### Start of my custom configurations ####################

#export PATH=$HOME/bin:$PATH

# Function to open processes as daemons:
function open() { $* >/dev/null 2>/dev/null & disown }

# Virtualenvwrapper configuration
#export WORKON_HOME=$HOME/.virtualenvs
#export PROJECT_HOME=$HOME/projects
#source /usr/bin/virtualenvwrapper.sh

# VTK module for python
# export PYTHONPATH=/usr/lib/python2.7/site-packages/vtk:$PYTHONPATH

# Add custom location of the npm global packages
#export PATH=$HOME/.npm-global/bin:$PATH

# Make alias to get numbered list of directories in stack
alias dires="dirs -v"

# Revert some pushd options set by oh-my-zsh
unsetopt auto_pushd
unsetopt pushd_ignore_dups

# Use vim as my default text editor
#export VISUAL=nvim
#export EDITOR="$VISUAL"

# Alias to build hugo in dev directory
alias hugos="hugo server -wD -d dev"

# Load Xresources (for urxvt)
#xrdb ~/.Xresources

# Make hugo server files to dev directory
alias gohugo="hugo server -D -d dev"

# dynamic-colors Xdefaults
export PATH="$HOME/.dynamic-colors/bin:$PATH"
source $HOME/.dynamic-colors/completions/dynamic-colors.zsh

# firefox developer edition alias
alias firefox-dev="firefox-developer-edition"

# docker commands
alias docker-clean-unused='docker system prune --all --force --volumes'
alias docker-clean-all='docker stop $(docker container ls -a -q) && docker system prune -a -f --volumes'
alias dc="docker-compose"
alias dcrun="docker-compose run --rm"

# JupyterLab Application Directory
#export JUPYTERLAB_DIR=$HOME/.local/share/jupyter/lab

# BROWSER environment variable for default browser in e.g. Jupyter Lab
#export BROWSER=/usr/bin/firefox-developer-edition

# launch spt alias
alias spt="launchspt"
alias bt="bintest"

# get current term name
alias which_term="ps -aux | grep `ps -p $$ -o ppid=` | awk 'NR==1{print \$11}'"

# Fix java apps in sway
#if [ "$XDG_SESSION_DESKTOP" = "sway" ] ; then
#    # https://github.com/swaywm/sway/issues/595
#    export _JAVA_AWT_WM_NONREPARENTING=1
#fi

# Vimpager
#export PAGER=
#alias less=$PAGER
#alias zless=$PAGER

#cs 50 environment variables
#export CC=clang
#export CFLAGS="-ggdb3 -O0 -std=c99 -Wall -Werror"
#export LDLIBS="-lcs50 -lm"
#export LDLIBS="-lcs50"

alias conda_activate='eval "$(/home/idest/miniconda3/bin/conda shell.zsh hook)"'

export MOZ_ENABLE_WAYLAND=1

alias ls="exa"
