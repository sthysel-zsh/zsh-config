# java
export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=lcd_hrgb'
export VISUAL=emacsclient
export EDITOR=emacsclient

# load the secrets
source ~/.secrets

export WORKON_HOME=~/.virtualenvs
source /usr/bin/virtualenvwrapper.sh

export NUMBAPRO_CUDA_DRIVER=/usr/lib64/libcuda.so
export NUMBAPRO_LIBDEVICE=/opt/cuda/nvvm/libdevice/
export NUMBAPRO_NVVM=/opt/cuda/nvvm/lib64/libnvvm.so

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/opt/cuda/targets/x86_64-linux/lib/:/lib/x86_64-linux-gnu 

export PATH=$PATH:~/dotfiles/scripts/

typeset -U path
path=(~/.local/bin $path[@])
