# git settings
source /usr/local/git/contrib/completion/git-prompt.sh
source /usr/local/git/contrib/completion/git-completion.bash
GIT_PS1_SHOWDIRTYSTATE=true
export PS1='\[\033[34m\]\w\[\033[32m\]$(__git_ps1)\[\033[00m\]
\$ '

# alias
alias bashrc='vim ~/.bashrc'
alias bashrcc='source ~/.bashrc && cd ~/dotfiles/ && git st'
alias cc='compass compile'
alias d='git checkout develop'
alias dd='git checkout develop && git pull && git pull origin develop'
alias dayone='dayone new'
alias ff='open -a firefox'
alias firefox='open -a firefox'
alias google='open http://www.google.co.jp/'
alias g='git'
alias gs='git st'
alias ga='git add'
alias gc='git commit -m'
alias gca='git commit --amend'
alias gd='git diff'
alias gdd='git diff --cached'
alias gt='git'
alias m='git checkout master'
alias mm='git checkout master && git pull && git pull origin master'
alias mkdirr='mkdir -p'
alias o='open'
alias od='open dev'
alias v='vim'
alias vi='vim'
alias vv='vi'
alias vu='vagrant up'
alias vh='vagrant halt'

# node.js
# source ~/.nvm/nvm.sh
# nvm use 0.10.13

