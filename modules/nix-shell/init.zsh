# Lets you use zsh as the default shell in a nix-shell environment.

# Load dependencies.
pmodload 'nix-zsh-completions'

# Return if requirements are not found.
if (( ! $+commands[nix-shell] )); then
  return 1
fi

# Source module files.
source "${0:h}/external/nix-shell.plugin.zsh" || return 1
