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
