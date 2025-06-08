#!/bin/sh
# User shell config load order: 
# .zshenv → .zprofile → .zshrc → .zlogin → .zlogout
#
# -- .zshenv - environment variables, loaded once on login shell.  Common env vars could/should go here. Considered optional.
# -- .zprofile - env config for all login shells, interactive or not. EDITOR, PATH, PAGER should go here or .zshenv
# -- .zshrc - env config for interactive shells
#

# XDG base dir specification - moved to .zshenv
# export XDG_CONFIG_HOME="$HOME/.config"
# export XDG_DATA_HOME="$HOME/.local/share"
# export XDG_CACHE_HOME="$HOME/.cache"

# Extend PATH
export PATH="$XDG_CONFIG_HOME/scripts:$PATH"

# Default programs
export EDITOR="nvim"
# export TERM="st"
# export TERMINAL="st"
# export MUSPLAYER="termusic"
# export BROWSER="firefox"
# export BROWSER2="librewolf"
# export DISPLAY=:0 # useful for some scripts

# Relocate config files

# moved to .zshrc 
# export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

# Eza
export EZA_CONFIG_DIR="$XDG_CONFIG_HOME/eza"

# Relocate history files
export LESSHISTFILE="$XDG_CACHE_HOME/less_history"
export PYTHON_HISTORY="$XDG_DATA_HOME/python/history"
# export HISTFILE="$XDG_CACHE_HOME/zsh/.zsh_history"

#
# Plugin/extension/etc configs
#
 
# zsh syntax highlighter
export DATE=$(date "+%A, %B %e  %_I:%M%P")
export ZSH_HIGHLIGHT_HIGHLIGHTERS_DIR=/opt/homebrew/share/zsh-syntax-highlighting/highlighters

# Bat config 
export BAT_THEME=Nord

# Fzf config
export FZF_DEFAULT_OPTS="--style minimal --color 16 --layout=reverse --height 30% --preview='bat -p --color=always {}'"
export FZF_CTRL_R_OPTS="--style minimal --color 16 --info inline --no-sort --no-preview" # separate opts for history widget
export FZF_CTRL_T_OPTS="--preview '$show_file_or_dir_preview'"
export FZF_ALT_C_OPTS="--preview 'eza --tree --color=always {} | head -200'"

#
# MISC cruft, weed out/reuse
#

# export XINITRC="$XDG_CONFIG_HOME/x11/xinitrc"
# export XPROFILE="$XDG_CONFIG_HOME/x11/xprofile"
# export XRESOURCES="$XDG_CONFIG_HOME/x11/xresources"
# export GTK2_RC_FILES="$XDG_CONFIG_HOME/gtk-2.0/gtkrc-2.0" # gtk 3 & 4 are XDG compliant
# export WGETRC="$XDG_CONFIG_HOME/wget/wgetrc"
# export PYTHONSTARTUP="$XDG_CONFIG_HOME/python/pythonrc"
# export GNUPGHOME="$XDG_DATA_HOME/gnupg"
# export CARGO_HOME="$XDG_DATA_HOME/cargo"
# export GOPATH="$XDG_DATA_HOME/go"
# export GOBIN="$GOPATH/bin"
# export GOMODCACHE="$XDG_CACHE_HOME/go/mod"
# export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"
# export GRADLE_USER_HOME="$XDG_DATA_HOME/gradle"
# export NUGET_PACKAGES="$XDG_CACHE_HOME/NuGetPackages"
# export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME/java"
# export _JAVA_AWT_WM_NONREPARENTING=1
# export PARALLEL_HOME="$XDG_CONFIG_HOME/parallel"
# export FFMPEG_DATADIR="$XDG_CONFIG_HOME/ffmpeg"
# export WINEPREFIX="$XDG_DATA_HOME/wineprefixes/default"


# Less config
# export MANPAGER="less -R --use-color -Dd+r -Du+b" # colored man pages

# colored less + termcap vars
# export LESS="R --use-color -Dd+r -Du+b"
# export LESS_TERMCAP_mb="$(printf '%b' '[1;31m')"
# export LESS_TERMCAP_md="$(printf '%b' '[1;36m')"
# export LESS_TERMCAP_me="$(printf '%b' '[0m')"
# export LESS_TERMCAP_so="$(printf '%b' '[01;44;33m')"
# export LESS_TERMCAP_se="$(printf '%b' '[0m')"
# export LESS_TERMCAP_us="$(printf '%b' '[1;32m')"
# export LESS_TERMCAP_ue="$(printf '%b' '[0m')"

#h eval "$(/opt/homebrew/bin/brew shellenv)"
