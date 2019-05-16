# java
export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=lcd_hrgb'
export VISUAL=emacsclient
export EDITOR=emacsclient

export CUDA_HOME=/opt/cuda/


# load the secrets
source ~/.secrets

typeset -U path
path=(~/.local/bin /opt/cuda/bin $path[@])
