distro=$(lsb_release -si)

if [[ ! $commands[tmux] ]]; then
    echo "installing tmux"
    if [[ -z "${distro}" ]]; then
        echo "do nothing because lsb_release is not installed"
    elif [[ "${distro}" == "Arch" || "${distro}" == "EndeavourOS" ]]; then
        sudo pacman -S tmux
    elif [[ "${distro}" == "Fedora" ]]; then
        sudo dnf install tmux
    elif [[ "${distro}" == "Ubuntu" ]]; then
        sudo apt install tmux
    fi
fi

if [[ ! -d "$XDG_CONFIG_HOME/tmux/plugins/tpm" ]]; then
    echo "installing tpm"
    git clone https://github.com/tmux-plugins/tpm "$XDG_CONFIG_HOME/tmux/plugins/tpm"
fi
