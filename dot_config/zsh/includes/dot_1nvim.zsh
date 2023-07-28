distro=$(lsb_release -si) 

if [[ ! $commands[nvim] ]]; then
    echo "installing neovim" 
    if [[ -z "${distro}" ]]; then
        echo "do nothing because lsb_release is not installed"
    elif [[ "${distro}" == "arch" || "${distro}" == "endeavouros" ]]; then
        echo "installing neovim via pacman"
        sudo pacman -s neovim 
    elif [[ "${distro}" == "fedora" ]]; then
        sudo dnf install neovim
    elif [[ "${distro}" == "ubuntu" ]]; then
        sudo apt install neovim
    else
        curl -lo https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
        chmod u+x nvim.appimage\
        sudo mv nvim.appimage $home/.local/bin/nvim
    fi
fi

