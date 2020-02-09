# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block, everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

#zmodload zsh/zprof

# Install zplug if its not
ZPLUG_HOME=~/.zplug
if [[ ! -d ${ZPLUG_HOME} ]]
then
  git clone https://github.com/zplug/zplug ${ZPLUG_HOME}
  source ${ZPLUG_HOME}/init.zsh && zplug update --verbose
fi

source ${ZPLUG_HOME}/init.zsh

# load some nice zsh plugins
zplug "zplug/zplug", hook-build:"zplug --self-manage"
zplug "romkatv/powerlevel10k", as:theme, depth:1
zplug "plugins/ssh-agent", from:oh-my-zsh, if:"which ssh-agent"
zplug "plugins/vi-mode", from:oh-my-zsh
zplug "plugins/git", from:oh-my-zsh
zplug "plugins/z", from:oh-my-zsh
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
setopt auto_cd

# config 
DEFAULT_USER=$USER

TERM="xterm-256color"
HISTFILE=~/.zhistory
HISTSIZE=1200
SAVEHIST=1000

ZSH_THEME='powerlevel10k/powerlevel10k'

zplug load

autoload -Uz compinit
compinit

# Completion for kitty
kitty + complete setup zsh | source /dev/stdin

zstyle ':completion:*' menu select
setopt COMPLETE_ALIASES


#zprof

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
