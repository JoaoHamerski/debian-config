#export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH
export ZSH=$HOME/.oh-my-zsh

ZSH_CUSTOM="$HOME/.omz-custom"
ZSH_THEME="spaceship"

fpath=(${ASDF_DIR}/completions $fpath)
source "$HOME/.asdf/asdf.sh"

# Zsh config
source "$HOME/.omz-custom/oh-my-zsh.sh"

# Zinit
source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"

# Zinit plugins
zinit light zdharma/fast-syntax-highlighting
zinit light zsh-users/zsh-autosuggestions
zinit light spaceship-prompt/spaceship-prompt

# Command not found suggestion
source /etc/zsh_command_not_found

# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"

# Zoxide
eval "$(zoxide init zsh)"

bindkey '^[[1;5D' backward-word
bindkey '^[[1;5C' forward-word
