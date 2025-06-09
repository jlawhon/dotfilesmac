# User shell config load order: 
# .zshenv → .zprofile → .zshrc → .zlogin → .zlogout
#
# -- .zshenv - environment variables, loaded once on login shell.  Common env vars could/should go here. Considered optional.
# -- .zprofile - env config for all login shells, interactive or not. EDITOR, PATH, PAGER should go here or .zshenv
# -- .zshrc - env config for interactive shells
#

# nvim as editor
export EDITOR=nvim

# PAGER

# cd command auto pushd
setopt autopushd

# case insensitive globbing
setopt NO_CASE_GLOB

# enable extended history, shared history, append history, incrementally append history, cleanup options
setopt EXTENDED_HISTORY
setopt SHARE_HISTORY 
setopt APPEND_HISTORY 
setopt INC_APPEND_HISTORY
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_FIND_NO_DUPS
setopt HIST_REDUCE_BLANKS
setopt HIST_IGNORE_DUPS          # Don't record an entry that was just recorded again.
setopt HIST_IGNORE_ALL_DUPS      # Delete old recorded entry if new entry is a duplicate.
setopt HIST_SAVE_NO_DUPS         # Don't write duplicate entries in the history file.

# enable autocorrections
setopt CORRECT 
setopt CORRECT_ALL

# source global shell alias & variables files
[ -f "$XDG_CONFIG_HOME/shell/alias" ] && source "$XDG_CONFIG_HOME/shell/alias"
[ -f "$XDG_CONFIG_HOME/shell/vars" ] && source "$XDG_CONFIG_HOME/shell/vars"

# starship config home
# export STARSHIP_CONFIG="$XDG_CONFIG_HOME/starship/starship.toml"

# load modules
zmodload zsh/complist
autoload -U compinit && compinit -d
autoload -U colors && colors
# compinit -d $ZSH_COMPDUMP
#zstyle ':completion:*' use-cache true
#zstyle ':completion:*' cache-path $XDG_CACHE_HOME/zsh/

# Set keys for  Mac
bindkey -e
bindkey '^[[1;5C' forward-word
bindkey '^[[1;5D' backward-word

# Set history search keys
# completion using arrow keys (based on history)
bindkey '^[[A' history-search-backward
bindkey '^[[B' history-search-forward

# Set prompt
NEWLINE=$'\n'
PROMPT="${NEWLINE}%K{#2E3440}%F{#E5E9F0}$(date +%_I:%M%P) %K{#3b4252}%F{#ECEFF4} %m %K{#4c566a} %~ %f%k ❯ "

# Setup Homebrew 
eval "$(/opt/homebrew/bin/brew shellenv)"

# Setup fzf key bindings and fuzzy completion
source <(fzf --zsh)

#export FZF_DEFAULT_COMMAND="fd --hidden --strip-cwd-prefix --exclude .git "
#export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
#export FZF_ALT_C_COMMAND="fd --type=d --hidden --strip-cwd-prefix --exclude .git"

#export FZF_DEFAULT_OPTS="--height 50% --layout=default --border --color=hl:#2dd4bf"

# Setup fzf previews
#export FZF_CTRL_T_OPTS="--preview 'bat --color=always -n --line-range :500 {}'"
#export FZF_ALT_C_OPTS="--preview 'eza --icons=always --tree --color=always {} | head -200'"

# fzf preview for tmux
# export FZF_TMUX_OPTS=" -p90%,70% "  

 export FZF_DEFAULT_OPTS=" \
--color=bg+:#313244,bg:#1E1E2E,spinner:#F5E0DC,hl:#F38BA8 \
--color=fg:#CDD6F4,header:#F38BA8,info:#CBA6F7,pointer:#F5E0DC \
--color=marker:#B4BEFE,fg+:#CDD6F4,prompt:#CBA6F7,hl+:#F38BA8 \
--color=selected-bg:#45475A \
--color=border:#313244,label:#CDD6F4"

# -- Use fd instead of fzf --

export FZF_DEFAULT_COMMAND="fd --hidden --strip-cwd-prefix --exclude .git"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd --type=d --hidden --strip-cwd-prefix --exclude .git"

# Use fd (https://github.com/sharkdp/fd) for listing path candidates.
# - The first argument to the function ($1) is the base path to start traversal
# - See the source code (completion.{bash,zsh}) for the details.
_fzf_compgen_path() {
  fd --hidden --exclude .git . "$1"
}

# Use fd to generate the list for directory completion
_fzf_compgen_dir() {
  fd --type=d --hidden --exclude .git . "$1"
}

# load zsh-autosuggestions
source $HOMEBREW_PREFIX/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# load zsh-syntax-highlighting
source $HOMEBREW_PREFIX/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Yazi file manager
function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	IFS= read -r -d '' cwd < "$tmp"
	[ -n "$cwd" ] && [ "$cwd" != "$PWD" ] && builtin cd -- "$cwd"
	rm -f -- "$tmp"
}

# zoxide ls replacement
eval "$(zoxide init zsh)"

# starship prompt
# eval "$(starship init zsh)"

# oh-my-posh
# eval "$(oh-my-posh init zsh)"
if [ "$TERM_PROGRAM" != "Apple_Terminal" ]; then
  eval "$(oh-my-posh init zsh --config $XDG_CONFIG_HOME/ohmyposh/omp.toml)"
fi

# thefuck autocorrection
eval $(thefuck --alias)
eval $(thefuck --alias fk)

# atuin history search
eval "$(atuin init zsh --disable-up-arrow)"
