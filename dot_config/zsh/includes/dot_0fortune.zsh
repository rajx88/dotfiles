install_package() {
  local package_name=${2:-$1}
  local command_name=$1


  if ! command -v $command_name &> /dev/null; then
    local distro=$(cat /etc/os-release | grep '^ID=' | cut -d'=' -f2 | tr -d '"')

    case "$distro" in
      "ubuntu" | "debian")
        sudo apt install $package_name
        ;;

      "arch" | "endeavouros")
        sudo pacman -S $package_name
        ;;

      *)
        echo "Unsupported distribution: $distro"
        echo "You'll need to manually install $package_name on this system."
        exit 1
        ;;
    esac
  fi
}

install_package "cowsay"
install_package "lolcat"
install_package "fortune" "fortune-mod"

