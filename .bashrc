# git settings
source /usr/local/git/contrib/completion/git-prompt.sh
source /usr/local/git/contrib/completion/git-completion.bash
GIT_PS1_SHOWDIRTYSTATE=true
export PS1='\[\033[34m\]\w\[\033[32m\]$(__git_ps1)\[\033[00m\]
\$ '

# alias
alias bashrc='open ~/.bashrc'
alias bashrcc='source ~/.bashrc && cd ~/dotfiles/ && git st'
alias cc='compass compile'
alias cw='compass watch'
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
alias gce='git commit --allow-empty -m'
alias gd='git diff'
alias gdw='git diff | nkf -w'
alias gdd='git diff --cached'
alias gddw='git diff --cached | nkf -w'
alias gt='git'
alias j='jekyll'
alias jb='jekyll build'
alias js='jekyll serve'
alias jsw='jekyll serve --watch'
alias m='git checkout master'
alias mm='git checkout master && git pull && git pull origin master'
alias mameblo='python ~/mameblo/cli/mameblo.py'
alias mkdirr='mkdir -p'
alias nd='DEBUG=* node-dev'
alias o='open'
alias rspecc='bundle exec rspec spec'
alias gitpush='bundle exec rspec spec'
alias v='vim'
alias vi='vim'
alias vv='vi'
alias vu='vagrant up'
alias vh='vagrant halt'

# Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
