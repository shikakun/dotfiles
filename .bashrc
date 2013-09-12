# git settings
source /usr/local/git/contrib/completion/git-prompt.sh
source /usr/local/git/contrib/completion/git-completion.bash
GIT_PS1_SHOWDIRTYSTATE=true
export PS1='\[\033[34m\]\w\[\033[32m\]$(__git_ps1)\[\033[00m\]
\$ '

# alias
alias g='git'
alias gs='g s'
alias ga='g a'
alias gc='g c'
alias gt='tig'

# node.js
source ~/.nvm/nvm.sh
nvm use 0.10.13

