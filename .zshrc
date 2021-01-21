export ZSH=$HOME/.oh-my-zsh
 
# たとえば oh-my-zsh テーマカラーを robbyrussell から変更する場合
ZSH_THEME="candy"
 
# oh my zsh で利用するプラグインを指定
plugins=(git zsh-syntax-highlighting zsh-completions)
 
# oh-my-zsh に変更を適用
source $ZSH/oh-my-zsh.sh
 
##### zsh の設定 #####
 
# すっきりしたプロンプト表示 (不要ならコメントアウト)
PROMPT='%~ %# '
 
# zsh-completions の設定。コマンド補完機能
autoload -U compinit && compinit -u
 
# git のカラー表示
git config --global color.ui auto 

# vim操作
bindkey -v
autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey '^P' history-beginning-search-backward-end
bindkey '^N' history-beginning-search-forward-end
bindkey '^F' history-incremental-search-backward

# alias
alias spa='cd ~/CodeCommit/spa/lspan-spa'
alias api='cd ~/CodeCommit/api'
alias ops='cd ~/CodeCommit/ops'
alias cloudformation='cd ~/CodeCommit/cloudformation'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# nvm
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# git
autoload -Uz vcs_info
setopt prompt_subst
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr "%F{magenta}!"
zstyle ':vcs_info:git:*' unstagedstr "%F{yellow}+"
zstyle ':vcs_info:*' formats "%F{cyan}%c%u[%b]%f"
zstyle ':vcs_info:*' actionformats '[%b|%a]'
precmd () { vcs_info }

# プロンプトカスタマイズ
PROMPT='
[%B%F{red}%n@%m%f%b:%F{green}%~%f]%F{cyan}$vcs_info_msg_0_%f
%F{yellow}$%f '

# pyenvのバージョン切り替わらない問題
eval "$(pyenv init -)"
