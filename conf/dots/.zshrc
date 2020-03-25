export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH"
export PATH="/usr/local/Cellar:$PATH"

source /usr/local/share/antigen/antigen.zsh
antigen bundle git
antigen bundle git-extras
antigen bundle autojump
antigen bundle zdharma/fast-syntax-highlighting 
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle danielefongo/shapeshift
antigen apply

source ~/.aliases
if [[ -f "$HOME/.custom_aliases" ]]; then
  source "$HOME/.custom_aliases"
fi

source ~/.zfunc/*

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory
setopt SHARE_HISTORY
setopt hist_ignore_space
setopt histignoredups

export HOMEBREW_NO_AUTO_UPDATE=1
