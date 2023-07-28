distro=$(lsb_release -si) 

if [[ ! $commands[broot] ]]; then
    echo "installing broot" 
    if [[ -z "${distro}" ]]; then
        echo "do nothing because lsb_release is not installed"
    elif [[ "${distro}" == "arch" || "${distro}" == "endeavouros" ]]; then
        sudo pacman -s broot
    elif [[ "${distro}" == "fedora" ]]; then
        sudo dnf install broot
    else
        curl -ss https://dystroy.org/broot/download/x86_64-linux/broot --output ~/.local/bin/broot
        chmod +x ~/.local/bin/broot
    fi
    
    broot --install
fi

