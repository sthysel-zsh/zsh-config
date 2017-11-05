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

# gitkraken is kraked
# alias gitkraken="LD_PRELOAD=/usr/lib/libcurl.so.3 gitkraken"

alias ls="ls -hF --color=auto"
alias ll="ls -lahF --color=auto"
alias lsl="ls -lhF --color=auto"

alias tree='tree -CAFa -I ".git" --dirsfirst'
autoload -Uz compinit
compinit

alias README2RST='pandoc --from=markdown --to=rst --output=README.rst README.md'

zstyle ':completion:*' menu select
setopt COMPLETE_ALIASES


# pass project/repo e.g: wts/breadcrumb
gitclonebhp () {
    URL=https://${BHP_USER}@sdappsgit.ent.bhpbilliton.net/scm
    git clone ${URL}/${1}
}

winmount() {
    sudo mount -t vboxsf meinm9 ./windows/
}


case "${MACHINE_LOCATION}" in
  BHP) proxy-on ;;
  *) ;;
esac


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# java
export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=lcd_hrgb'

# emacs
alias ev="emacsclient -c"

