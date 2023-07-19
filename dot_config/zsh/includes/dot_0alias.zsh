# zsh file related
alias szsh="source ${ZDOTDIR}/.zshrc"

###         code        ###
alias c="code"
alias czsh="c ${ZDOTDIR}"


###         git         ### 
alias gs="git status"
alias gc="git commit -v"
alias gall="git add ."
alias gp="git push"
alias gco="git checkout"
alias gcb="git checkout -b"


###         java        ###
alias gw="./gradlew --parallel"

alias gwcb="gw clean build"
alias gwb="gw build"
alias gwcheck="gw checkstyleMain pmdMain spotbugsMain --continue"
alias gwcc="gw clean && gwcheck --continue"
alias gwc="gw clean compileJava"
alias gwp="gw clean publishToMavenLocal"


###         vagrant      ###
alias vup="vagrant up"
alias vh="vagrant halt"
alias vr="vagrant reload"
alias vssh="vagrant ssh"


###         tmux        ###
alias ta="tmux attach"


###         kubectl      ###
function k() {
  kubectl "$@"
}

alias kga="k get all"
alias kgp="k get pods"
alias kw="k get pods --watch"
alias wk="watch -n 2 kubectl get pods"
alias wkn="watch -n 2 kubectl get pods --namespace"

###         exa         ###
if (( $+commands[exa] )); then
    # ls
    alias ls="exa --icons"
    # alias ll="exa --icons --group-directories-first -al"
    alias ll="exa --icons -abghHliS"
    alias tree="exa --icons --tree -abghHliS"
else
    alias ll="ls -al"
fi


alias grep='grep --color'
