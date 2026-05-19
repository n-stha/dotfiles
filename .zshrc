
 [[ $- != *i* ]] && return

HISTSIZE=6969
HISTFILE=~/.xzshhistory
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt correct

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# Use history substring search
source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh

# pkgfile "command not found" handler
source /usr/share/doc/pkgfile/command-not-found.zsh

alias pmi="sudo pacman -S"
alias pmr="sudo pacman -Rns"
alias pmu="sudo pacman -Syu"
alias pms="pacman -Ss"
alias pmq="pacman -Q --info"
alias pmcc="sudo pacman -Scc"

alias ls="eza"
alias grep="rg"
alias cat="bat --theme Dracula"

alias noc="qs -c noctalia-shell"

if type rg &> /dev/null; then
  export FZF_DEFAULT_COMMAND='rg --files'
fi

eval "$(starship init zsh)"
eval "$(fzf --zsh)"
# pokemon-colorscripts -r --no-title