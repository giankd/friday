# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# === Antigen ===
source $HOME/.antigen/antigen.zsh
source $HOME/.antigen/.antigen.conf

## === Oh-My-Zsh ===
#export ZSH="$HOME/.oh-my-zsh"
#source $ZSH/oh-my-zsh.sh

# === ENV ===
export PATH="$HOME/.local/bin:$HOME/.local/bin/tmux-commands/:$PATH"

# === Aliases ===
[[ ! -f ~/.zsh/.aliases ]] || source ~/.zsh/.aliases

# === Functions ===
fpath=( ~/.zsh/.fn "${fpath[@]}" )
# autoload -Uz $fpath[1]/\*(.:t) # More performant, but not working with symlink
autoload -Uz $fpath[1]/**/*

# === Fzf ===
if [ -n "${commands[fzf-share]}" ]; then
  source "$(fzf-share)/key-bindings.zsh"
  source "$(fzf-share)/completion.zsh"
fi

# === NVM ===
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# === THEFUCK ===
eval $(thefuck --alias)

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
