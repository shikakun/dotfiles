export LANG=ja_JP.UTF-8
export TERM=xterm-256color
export EDITOR=vim
HISTFILE=~/.histfile
HISTSIZE=100000
SAVEHIST=100000

# autoload
#### 自動補完を有効にする
autoload -Uz compinit

#### 色をつける
autoload -Uz colors

#### バージョン管理ツールのステータスを表示する
autoload -Uz vcs_info

#### プロンプトを表示する前に関数を実行する
autoload -Uz add-zsh-hook

# setopt
#### 入力したコマンドが存在せず、かつディレクトリ名と一致するなら、ディレクトリに cd する
setopt auto_cd

#### cd したディレクトリをディレクトリスタック（履歴）に追加する
#### 呼び出すときは `cd +<Tab>`
setopt auto_pushd
setopt pushd_ignore_dups # すでにスタックに含まれていればディレクトリスタックに追加しない

#### 入力したコマンドがすでにコマンド履歴に含まれるとき、履歴から古いほうのコマンドを削除する
setopt hist_ignore_all_dups

#### プロンプト表示ごとに変数を展開する
setopt PROMPT_SUBST

# zstyle
#### 補完で小文字でも大文字にマッチさせる
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

#### vcs_info
zstyle ':vcs_info:*' formats '%b'

# 色をつける
#### ls
export LSCOLORS=gxfxcxdxbxegedabagacad
export LS_COLORS='di=36:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'
alias ls='ls -G'
zstyle ':completion:*' list-colors 'di=36' 'ln=35' 'so=32' 'ex=31' 'bd=46;34' 'cd=43;34'

# コマンドプロンプトをカスタマイズする
#### 左
PROMPT='%F{cyan}%~%f %# '

#### 右 (Git)
_vcs_precmd () { vcs_info }
add-zsh-hook precmd _vcs_precmd
RPROMPT='%F{green}${vcs_info_msg_0_}%f'

# エイリアス
alias a='atom'
alias f='find . -name'
alias g='git'
alias ga='git add'
alias gc='git commit -m'
alias gca='git commit --amend'
alias gcaa='git commit --amend --no-edit'
alias gce='git commit --allow-empty -m'
alias gd='git diff'
alias gs='git status -sb'
alias m='git checkout master'
alias mm='git checkout master && git pull && git pull origin master'
alias o='open'
alias wip='git commit --allow-empty -m ":construction: WIP"'
alias z='source ~/.zshrc'
