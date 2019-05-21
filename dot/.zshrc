#zmodload zsh/zprof

# Install zplug if its not
ZPLUG_HOME=~/.zplug
if [[ ! -d ${ZPLUG_HOME} ]]
then
  git clone https://github.com/zplug/zplug ${ZPLUG_HOME}
  source ${ZPLUG_HOME}/init.zsh && zplug update --verbose
fi

source ${ZPLUG_HOME}/init.zsh

zplug "zplug/zplug", hook-build:"zplug --self-manage"
zplug "bhilburn/powerlevel9k", use:powerlevel9k.zsh-theme
zplug "plugins/ssh-agent", from:oh-my-zsh, if:"which ssh-agent"
zplug "plugins/vi-mode", from:oh-my-zsh
zplug "plugins/git", from:oh-my-zsh

# sthyselzsh
zplug "sthyselzsh/zsh-gayman"
zplug "sthyselzsh/zsh-pydev"
zplug "sthyselzsh/zsh-vim"
zplug "sthyselzsh/zsh-proxy"
zplug "supercrabtree/k"
# needs to be last
zplug "zsh-users/zsh-syntax-highlighting", defer:2

# Install packages that have not been installed yet
if ! zplug check --verbose
then
    printf "Install? [y/N]: "
    if read -q
    then
        echo
        zplug install
    else
        echo
    fi
fi

# plugin knobs tune
zstyle :omz:plugins:ssh-agent agent-forwarding on

# zsh flags
setopt APPEND_HISTORY
setopt HIST_EXPIRE_DUPS_FIRST
setopt EXTENDED_HISTORY
setopt SHARE_HISTORY


# config 
DEFAULT_USER=$USER

TERM="xterm-256color"
HISTFILE=~/.zhistory
HISTSIZE=1200
SAVEHIST=1000

zprompt_theme='powerlevel9k'
POWERLEVEL9K_MODE='nerdfont-complete'
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(vi_mode context dir)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(vcs status root_indicator background_jobs virtualenv)

zplug load

autoload -Uz compinit
compinit

# Completion for kitty
kitty + complete setup zsh | source /dev/stdin

zstyle ':completion:*' menu select
setopt COMPLETE_ALIASES

# aliases
# alias gitkraken="LD_PRELOAD=/usr/lib/libcurl.so.3 gitkraken"


# alias ls="ls -hF --color=auto"
# alias ll="ls -lahF --color=auto"
# alias lsl="ls -lhF --color=auto"

# lsd
alias ls='lsd'
alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'

alias tree='tree -CFa -I ".git" --dirsfirst'
alias pssh='ssh -o PreferredAuthentications=password -o PubkeyAuthentication=no'

# pandoc
alias md2rst='pandoc --from=markdown --to=rst --output=README.rst README.md'

#zprof
