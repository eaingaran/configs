# common paths
export PATH=$HOME/bin:/usr/local/bin:/usr/local/sbin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"


# oh-my-zsh options
ZSH_THEME="agnoster"
ENABLE_CORRECTION="true"

# plugins to be enabled
plugins=(
git
docker
gcloud
terraform
zsh-syntax-highlighting
zsh-interactive-cd
zsh-autosuggestions
history-substring-search
web-search
)

ZSH_WEB_SEARCH_ENGINES=(
reddit "https://www.reddit.com/search/?q="
wiki "http://en.wikipedia.org/w/index.php?title=Special:Search&search="
stackoverflow "https://stackoverflow.com/search?q="
so "https://stackoverflow.com/search?q="
)

source $ZSH/oh-my-zsh.sh

# User configuration
export LANG=en_US.UTF-8

# aliases
alias kubeshell="kubectl run tmp-shell --rm -i --tty --image nicolaka/netshoot:latest"
eval $(thefuck --alias)

# history substring search config
bindkey "<ESC>[A" history-substring-search-up
bindkey "<ESC>[B" history-substring-search-down

# set user bin path

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

eval "$(starship init zsh)"
