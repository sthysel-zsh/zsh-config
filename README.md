# zsh config

![](./pics/cli.png)

This config uses zplug and installs a number of plugins from
omz, prezto and zuers.

## Install 

Install zsh

```
$sudo pacman -S zsh zsh-completions
```

Clone this repository and link the dots to ${HOME}


```
ln -s zsh-config/dotzsh ~/.zsh
ln -s zsh-config/dotzshrc ~/.zshrc
```

This config will test for the existence of zplug and install it if needs be.
zplug will manage all plugins.


Update plugins occationally:

```
thys@elim   ~  zplug update                                                                                                                                          
[zplug] Start to update 11 plugins in parallel

 ✔  Up-to-date            sthysel/zsh-proxy
 ✔  Up-to-date            bhilburn/powerlevel9k
 ✔  Up-to-date            zsh-users/zsh-syntax-highlighting
 ✔  Up-to-date            plugins/vi-mode
 ✔  Up-to-date            plugins/ssh-agent
 ✔  Up-to-date            zplug/zplug
 ✔  Up-to-date            sthysel/zsh-gayman
 ✔  Up-to-date            sthysel/zsh-vim
 ✔  Up-to-date            supercrabtree/k
 ✔  Up-to-date            plugins/git
 ✔  Up-to-date            sthysel/zsh-pydev

[zplug] Elapsed time: 14.0426 sec.
 ==> Updating finished successfully!
```

