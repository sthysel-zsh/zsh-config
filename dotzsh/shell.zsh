bindkey -v

export PATH=$PATH:$HOME/.local/bin/

bindkey -M viins '^r' history-incremental-search-backward
bindkey -M vicmd '^r' history-incremental-search-backward
