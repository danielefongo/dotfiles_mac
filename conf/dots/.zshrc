export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH"
export PATH="/usr/local/Cellar:$PATH"

source /usr/local/share/antigen/antigen.zsh
antigen bundle git
antigen bundle scmbreeze/scm_breeze
antigen bundle autojump
antigen bundle fzf
antigen bundle zdharma/fast-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle danielefongo/shapeshift
antigen apply

for file in ~/.zsh/*; do source "$file"; done
source /usr/local/opt/asdf/asdf.sh

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory
setopt SHARE_HISTORY
setopt hist_ignore_space
setopt histignoredups

export HOMEBREW_NO_AUTO_UPDATE=1
export FZF_COMPLETION_TRIGGER=''
bindkey '^T' fzf-completion
bindkey '^I' $fzf_default_completion
