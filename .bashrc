# git settings
source /usr/local/git/contrib/completion/git-prompt.sh
source /usr/local/git/contrib/completion/git-completion.bash
GIT_PS1_SHOWDIRTYSTATE=true
export PS1='\[\033[34m\]\w\[\033[32m\]$(__git_ps1)\[\033[00m\]
\$ '

# alias
alias bashrc='open ~/.bashrc'
alias bashrcc='source ~/.bashrc && cd ~/dotfiles/ && git st'
alias be='bundle exec'
alias bi='bundle install --path vendor/bundle'
alias cc='compass compile'
alias cw='compass watch'
alias finddir='find . -type d -name'
alias findfile='find . -name'
alias g='git'
alias ga='git add'
alias gc='git commit -m'
alias gca='git commit --amend'
alias gcaa='git commit --amend --no-edit'
alias gce='git commit --allow-empty -m'
alias gd='git diff'
alias gdd='git diff --cached'
alias google='open http://www.google.co.jp/'
alias gs='git st'
alias gt='git'
alias jb='jekyll build'
alias js='jekyll serve'
alias jsw='jekyll serve --watch'
alias ls='ls -1'
alias m='git checkout master'
alias mm='git checkout master && git pull && git pull origin master'
alias moji='nkf --guess'
alias o='open'
alias rs='bundle exec rails server'
alias v='vim'
alias vh='vagrant halt'
alias vi='vim'
alias vu='vagrant up'
alias wip='git commit --allow-empty -m ":construction: WIP"'
alias youtube='mpsyt'

# Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
