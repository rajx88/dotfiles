install(){
    echo "Installing $1 globally"

    asdf install $1 latest
    asdf global $1 latest
}

install_exists(){
  if ! asdf plugin-list | grep -q $2; then
    echo "Adding plugin to asdf $2"

    if [ $# -eq 2 ]; then
      asdf plugin add $2
    elif [ $# -eq 3 ]; then
      asdf plugin add $2 $3
    fi
    
    if $1 ; then
      install $2
    fi

  fi
}

export ASDF_BIN="${XDG_CONFIG_HOME}/asdf/bin"
export ASDF_DIR="${XDG_CONFIG_HOME}/asdf"
export ASDF_DATA_DIR="${XDG_CONFIG_HOME}/asdf"
export ASDF_USER_SHIMS="${XDG_CONFIG_HOME}/asdf/shims"

if [[ ! -f "$ASDF_DIR/asdf.sh" ]]; then
  git clone https://github.com/asdf-vm/asdf.git ${ASDF_DIR} --branch v0.11.1
fi

[[ ! -f "${ASDF_DIR}/asdf.sh" ]] || . "${ASDF_DIR}/asdf.sh"

# append completions to fpath
fpath=($fpath ${ASDF_DIR}/completions)

alias asdfup="asdf plugin update --all"

install_exists true "exa"
install_exists true "pipx"
install_exists true "bat"
install_exists true "ripgrep"
install_exists true "lazygit"
install_exists true "fd" 
install_exists true "fzf" 
install_exists true "zoxide"

install_exists true "kubectl"
install_exists true "helm"

install_exists true "nodejs" 
install_exists true "java" 
install_exists true "golang"




if type zoxide > /dev/null; then
  eval "$(zoxide init zsh)"
fi

# java plugin
[[ ! -f "${ASDF_DIR}/plugins/java/set-java-home.zsh" ]] || . "${ASDF_DIR}/plugins/java/set-java-home.zsh"


