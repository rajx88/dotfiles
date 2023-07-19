if [ ! -d "${XDG_CACHE_HOME}/completions" ]; then
  mkdir -p "${XDG_CACHE_HOME}/completions"
fi

[[ $commands[kubectl] ]] && (kubectl completion zsh) > "${XDG_CACHE_HOME}/completions/_kubectl"
[[ $commands[kubectl] ]] && (kubectl completion zsh | sed 's/kubectl/k/g') > "${XDG_CACHE_HOME}/completions/_k"

[[ $commands[helm] ]] && (helm completion zsh) > "${XDG_CACHE_HOME}/completions/_helm"

[[ $commands[minikube] ]] && (minikube completion zsh) > "${XDG_CACHE_HOME}/completions/_minikube"