# Return if requirements are not found.
if [[ $TERM == 'dumb' ]]; then
  return 1
fi

# Add zsh-completions to $fpath.
fpath=(${0:h}/external $fpath)

# Initialization
source "${0:h}/external/init.zsh"
