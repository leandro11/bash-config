
export PS1="\[\e[32m\][\[\e[35m\]\u\[\e[m\]@\[\e[36m\]\h \[\e[31m\]\w\[\e[32m\]]\[\e[36m\]$\[\e[m\]"
alias ls='ls -G'
alias ll='ls -l'
alias rmi='rm -i' 
alias rm='rm -i' 

if [ -f ~/.git-completion.bash ]; then
    . ~/.git-completion.bash
fi
