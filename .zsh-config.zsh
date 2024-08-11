# ANSI formatting function (\033[<code>m)
# 0: reset, 1: bold, 4: underline, 22: no bold, 24: no underline, 31: red, 33: yellow
omz_f() {
  [ $# -gt 0 ] || return
  IFS=";" printf "\033[%sm" $*
}

# If stdout is not a terminal ignore all formatting
[ -t 1 ] || omz_f() { :; }

# Set ZSH_CACHE_DIR to the path where cache files should be created
# or else we will use the default cache/
[[ -n "$ZSH_CACHE_DIR" ]] || ZSH_CACHE_DIR="$ZSH/cache"

# Make sure $ZSH_CACHE_DIR is writable, otherwise use a directory in $HOME
if [[ ! -w "$ZSH_CACHE_DIR" ]]; then
  ZSH_CACHE_DIR="${XDG_CACHE_HOME:-$HOME/.cache}/oh-my-zsh"
fi

# Create cache and completions dir and add to $fpath
mkdir -p "$ZSH_CACHE_DIR/completions"
(( ${fpath[(Ie)$ZSH_CACHE_DIR/completions]} )) || fpath=("$ZSH_CACHE_DIR/completions" $fpath)

# Load all stock functions (from $fpath files) called below.
autoload -U compaudit compinit zrecompile

source "$HOME/.zsh-configs/compfix.zsh"

# Load only from secure directories
compinit -i -d "$ZSH_COMPDUMP"

# Load all of the lib files in ~/oh-my-zsh/lib that end in .zsh
# TIP: Add files you don't want in git to .gitignore
for lib_file (~/.zsh-configs/*.zsh); do
  source "$HOME/.zsh-configs/${lib_file:t}"
done
unset lib_file

# set completion colors to be the same as `ls`, after theme has been loaded
[[ -z "$LS_COLORS" ]] || zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
