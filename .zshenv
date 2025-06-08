# .zshenv is loaded first
#
# User shell config load order: 
# .zshenv → .zprofile → .zshrc → .zlogin → .zlogout
#
# -- .zshenv - environment variables, loaded once on login shell.  Common env vars could/should go here. Considered optional.
# -- .zprofile - env config for all login shells, interactive or not. EDITOR, PATH, PAGER should go here or .zshenv
# -- .zshrc - env config for interactive shells
#

# set xdg paths
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"

# relocate zsh configs
export ZDOTDIR=$XDG_CONFIG_HOME/zsh
export ZSH_CACHE_DIR="$XDG_CACHE_HOME/zsh"
export ZSH_COMPDUMP="$ZSH_CACHE_DIR/.zcompdump"
export HISTFILE="$ZSH_CACHE_DIR/.zsh_history"
export HISTSIZE=10000
export SAVEHIST=50000

# Atuin
# ATUIN_CONFIG_DIR="$XDG_CONFIG_HOME/atuin/"
# ATUIN_THEME_DIR="$XDG_CONFIG_HOME/atuin/themes/"

# extend path
# export PATH="$HOME/.local/bin:$PATH"
#
