# http://zsh.sourceforge.net/Doc/Release/Zsh-Line-Editor.html
# http://zsh.sourceforge.net/Doc/Release/Zsh-Line-Editor.html#Zle-Builtins
# http://zsh.sourceforge.net/Doc/Release/Zsh-Line-Editor.html#Standard-Widgets

bindkey -v                                          # Use vi key bindings
bindkey '^r' history-incremental-search-backward    # [Ctrl-r] - Search backward incrementally for a specified string. The string may begin with ^ to anchor the search to the beginning of the line.

# emacs style
# bindkey '^a' beginning-of-line
# bindkey '^e' end-of-line

# Make numpad enter work
bindkey -s "^[Op" "0"
bindkey -s "^[Ol" "."
bindkey -s "^[OM" "^M"


# Accept Autosuggestions
bindkey '^N' autosuggest-accept

# Maps Caps Lock to ESC and Control
## Make CapsLock behave like Ctrl
setxkbmap -option ctrl:nocaps

## Make short-pressed Ctrl behave like Escape
xcape -e 'Control_L=Escape'

