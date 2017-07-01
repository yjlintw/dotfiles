# Completions for tmuxp:
autoload bashcompinit
bashcompinit
eval "$(_TMUXP_COMPLETE=source tmuxp)"

# Load any custom after code
if [ -d $HOME/.zsh.after/ ]; then
  if [ "$(ls -A $HOME/.zsh.after/)" ]; then
    for config_file ($HOME/.zsh.after/*.zsh) source $config_file
  fi
fi
