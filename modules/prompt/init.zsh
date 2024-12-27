#
# Loads prompt themes.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Load and execute the prompt theming system.
autoload -Uz promptinit && promptinit

# Load the prompt theme.
zstyle -a ':prezto:module:prompt' theme 'prompt_argv'
if [[ $TERM == (dumb|linux|*bsd*) ]] || (( $#prompt_argv < 1 )); then
  prompt 'off'
else
  prompt "$prompt_argv[@]"
fi
unset prompt_argv

# Define prompts.
# PROMPT='${SSH_TTY:+"%F{9}%n%f%F{7}@%f%F{3}%m%f "}%F{4}${_prompt_sorin_pwd}%(!. %B%F{1}#%f%b.)${editor_info[keymap]} '
RPROMPT='$python_info[virtualenv]${editor_info[overwrite]}%(?:: %F{1}'
# RPROMPT+=${show_return}
# RPROMPT+='%f)${VIM:+" %B%F{6}V%f%b"}${_prompt_sorin_git}'
SPROMPT='zsh: correct %F{1}%R%f to %F{2}%r%f [nyae]? '
