powerline-on() {
  POWERLINE=/usr/lib/python3.6/site-packages/powerline/bindings/zsh/powerline.zsh
  if [[ -f ${POWERLINE} ]]
  then
    powerline-daemon -q
    . ${POWERLINE}
  fi
}
powerline-on

