
# Kiro CLI pre block. Keep at the top of this file.
[[ -f "${HOME}/Library/Application Support/kiro-cli/shell/zshrc.pre.zsh" ]] && builtin source "${HOME}/Library/Application Support/kiro-cli/shell/zshrc.pre.zsh"

# Q pre block. Keep at the top of this file.
setopt PROMPT_SUBST
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_FCNTL_LOCK

DISABLE_AUTO_TITLE="true"

# Start zim
source $ZIM_HOME/init.zsh

# Async mode for autocompletion
ZSH_AUTOSUGGEST_USE_ASYNC=true
ZSH_HIGHLIGHT_MAXLENGTH=300

# Init custom shell scripts
source $DOTFILES_PATH/zsh/init.sh

fpath=("$DOTFILES_PATH/zsh/completions" "$UTILSH_PATH/completions" $fpath)

autoload -U compaudit && autoload -Uz compinit && compinit

# bindings...
source $DOTFILES_PATH/zsh/bindings/key-bindings.zsh
source $DOTFILES_PATH/zsh/bindings/reverse_search.zsh

## Starship
eval "$(starship init zsh)"

## Init extra scripts
# source $DOTFILES_PATH/langs/python/pyenv/init.sh

# Atuin
source $DOTFILES_PATH/zsh/extra/atuin.sh

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"


[[ -f "$HOME/fig-export/dotfiles/dotfile.zsh" ]] && builtin source "$HOME/fig-export/dotfiles/dotfile.zsh"# Created by `pipx` on 2024-07-23 14:19:34
export PATH="$PATH:/Users/yodralopez/.local/bin"

# pnpm
export PNPM_HOME="/Users/yodralopez/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end


# Q post block. Keep at the bottom of this file.


# Kiro CLI post block. Keep at the bottom of this file.
[[ -f "${HOME}/Library/Application Support/kiro-cli/shell/zshrc.post.zsh" ]] && builtin source "${HOME}/Library/Application Support/kiro-cli/shell/zshrc.post.zsh"
