#export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

fpath=(${ASDF_DIR}/completions $fpath)

source "$HOME/.asdf/asdf.sh"

ZSH_THEME="spaceship"

# Zsh config
source "$HOME/.zsh-config.zsh"

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
