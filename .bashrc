# git settings
source /usr/local/git/contrib/completion/git-prompt.sh
source /usr/local/git/contrib/completion/git-completion.bash
GIT_PS1_SHOWDIRTYSTATE=true
export PS1='\[\033[34m\]\w\[\033[32m\]$(__git_ps1)\[\033[00m\]
\$ '

# alias
alias bashrc='vim ~/.bashrc'
alias bashrcc='source ~/.bashrc && cd ~/dotfiles/ && git st'
alias g='git'
alias gs='g s'
alias ga='g a'
alias gc='g c'
alias gca='git commit --amend'
alias gt='git'
alias od='open dev'
alias v='vim'
alias vi='vim'
alias vv='vi'

# node.js
source ~/.nvm/nvm.sh
nvm use 0.10.13

