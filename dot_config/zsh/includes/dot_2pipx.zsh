install_exists(){
    if type pipx > /dev/null; then
        if ! type $1 > /dev/null; then
            pipx install $1
        fi
    fi

}

install_exists thefuck

eval $(thefuck --alias)
