# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Source antigen
source "$HOME/.antigen.zsh"

# Use oh-my-zsh
antigen use oh-my-zsh

# Load some plugins
antigen bundle git
antigen bundle docker
antigen bundle thefuck
antigen bundle autojump
antigen bundle pip
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-completions

# Use powerlevel10k theme
antigen theme romkatv/powerlevel10k

# Apply
antigen apply

# Custom functions/aliases
function ftar {

  readonly filename=${1:?"Specify a filename"}
  readonly files=${@:2?}
  tar -czvf "$filename.tar.gz" $files
}

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
