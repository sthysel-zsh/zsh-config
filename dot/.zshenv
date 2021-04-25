# load the secrets
source ~/.secrets

export PATH=$PATH:~/.local/bin/
export VISUAL=emacsclient
export EDITOR=emacsclient
export TERM=xterm-kitty
#export BROWSER=google-chrome-stable

# CUDA bullshit, fuck you nvidia
export CUDA_HOME=/opt/cuda/
export NUMBAPRO_CUDA_DRIVER=/usr/lib64/libcuda.so
export NUMBAPRO_LIBDEVICE=/opt/cuda/nvvm/libdevice/
export NUMBAPRO_NVVM=/opt/cuda/nvvm/lib64/libnvvm.so
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/opt/cuda/targets/x86_64-linux/lib/:/lib/x86_64-linux-gnu

# java
export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=lcd_hrgb'

# some aliases
alias ls='lsd'
alias l='ls -l'
alias ll="ls -lahF"
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'
alias tree='tree -CFa -I ".git" --dirsfirst'

# force password prompt ssh, for when keys are broken or weird
alias pssh='ssh -o PreferredAuthentications=password -o PubkeyAuthentication=no'

# pandoc
alias md2rst='pandoc --from=markdown --to=rst --output=README.rst README.md'

export PATH="$HOME/.cargo/bin:$PATH"

# python
export WORKON_HOME=~/.virtualenvs
# source ~/.local/bin/virtualenvwrapper.sh
# export PATH="$HOME/.poetry/bin:$PATH"
