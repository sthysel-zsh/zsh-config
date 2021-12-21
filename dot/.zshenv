# .zshenv is always sourced
# it contains exported variables that should be available to other programs.
# For example, $PATH, $EDITOR, and $PAGER are often set in .zshenv. Also, you
# can set $ZDOTDIR in .zshenv to specify an alternative location for the rest
# of your zsh configuration.

# load the secrets
source ~/.secrets.sh

export PATH=$PATH:~/.local/bin/:~/go/bin:
export VISUAL=emacsclient
export EDITOR=emacsclient
export TERM=xterm-kitty
#export BROWSER=google-chrome-stable

# java
export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=lcd_hrgb'

# some aliases
alias ls="lsd"
alias l="ls -l"
alias ll="ls -lahF"
alias la="ls -a"
alias lla="ls -la"
alias lt="ls --tree"
alias tree='tree -CFa -I ".mypy_cache|.git|__pycache__" --dirsfirst'
# emotive package management
alias yeet="yay -Rcs"

# force password prompt ssh, for when keys are broken or weird
alias pssh='ssh -o PreferredAuthentications=password -o PubkeyAuthentication=no'

# pandoc
alias md2rst='pandoc --from=markdown --to=rst --output=README.rst README.md'


# python
export WORKON_HOME=~/.virtualenvs

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$PYENV_ROOT/bin:$PATH"


# CUDA bullshit, fuck you nvidia
export CUDA_HOME=/opt/cuda/
export NUMBAPRO_CUDA_DRIVER=/usr/lib64/libcuda.so
export NUMBAPRO_LIBDEVICE=/opt/cuda/nvvm/libdevice/
export NUMBAPRO_NVVM=/opt/cuda/nvvm/lib64/libnvvm.so
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/opt/cuda/targets/x86_64-linux/lib/:/lib/x86_64-linux-gnu
