# zsh config

This config uses zplug and installs a number of plugins from
omz, prezto and zuers.

## Install 

Get zsh

```
$sudo pacman -S zsh zsh-completions
```

Link dot\* to . in ~


```
ln -s zsh-config/dotzsh ~/.zsh
ln -s zsh-config/dotzshrc ~/.zshrc
```

This config will test for the existence of zplug and install it if needs be.
zplug will manage all plugins.


