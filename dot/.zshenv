# .zshenv is always sourced
# it contains exported variables that should be available to other programs.
# For example, $PATH, $EDITOR, and $PAGER are often set in .zshenv. Also, you
# can set $ZDOTDIR in .zshenv to specify an alternative location for the rest
# of your zsh configuration.

# ssh
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"

# load the secrets
source ~/.secrets.sh

export PATH=$PATH:~/.local/bin/:~/go/bin:~/.cargo/bin
export TERMINAL=kitty
export TERM=xterm-kitty
export VISUAL=nvim
export EDITOR=nvim
export GDK_SCALE=2
export GDK_DPI_SCALE=0.5

# java
export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=lcd_hrgb'

# python
export WORKON_HOME=~/.virtualenvs
# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

# CUDA bullshit, fuck you nvidia
export CUDA_HOME=/opt/cuda/
export NUMBAPRO_CUDA_DRIVER=/usr/lib64/libcuda.so
export NUMBAPRO_LIBDEVICE=/opt/cuda/nvvm/libdevice/
export NUMBAPRO_NVVM=/opt/cuda/nvvm/lib64/libnvvm.so
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/opt/cuda/targets/x86_64-linux/lib/:/lib/x86_64-linux-gnu

eval $(thefuck --alias)
alias ls='lsd'
alias l='ls -l'
alias ll="ls -lahF"
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'
alias tree='tree -CFa -I ".mypy_cache|.git|__pycache__" --dirsfirst'
# force password prompt ssh, for when keys are broken or weird
alias pssh='ssh -o PreferredAuthentications=password -o PubkeyAuthentication=no'
# pandoc markdown to rst
alias md2rst='pandoc --from=markdown --to=rst --output=README.rst README.md'
