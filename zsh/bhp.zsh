# BHP 
# below is proxy bullshit, creds only live in the air, not in any repo, maybe
# on a post-it on the laptop lid, stick all creds in ~/.proxy.conf, if the file
# exist load it here

proxy-on() {
    # load proxy config
    PROXY_CONF=${HOME}/.proxy.conf
    if [ -e "${PROXY_CONF}" ]
    then
      source ${PROXY_CONF}
    fi

    export https_proxy=${PROXY}
    export HTTPS_PROXY=${PROXY}

    export http_proxy=${PROXY}
    export HTTP_PROXY=${PROXY}

    export no_proxy=${NO_PROXY}
    export NO_PROXY=${NO_PROXY}
}

if [[ $(hostname) == "devarch" ]]
then
	echo "Proxy is configured"
	proxy-on
fi

proxy-off() {
    unset https_proxy
    unset http_proxy
    unset no_proxy
}

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
