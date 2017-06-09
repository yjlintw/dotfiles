# This is a very basic test file,
# meant for smoke testing the installation process in a CI envirorment

cd "$(dirname "${BASH_SOURCE[0]}")" && . "../bin/utils.sh"

# Sanity test for ZSH:
if [[ ! "$SHELL" =~ "zsh" ]]; then
  echo "Your shell seems not to have changed to zsh."
  exit 1
fi

# Testing brew was installed
if ! cmd_exists 'brew'; then
  print_error 'Brew not found. Looks like it was not installed.'
  exit 1
fi
# Testing the existance of a few packages we install
# (via Brew on OSX, apt-get on Linux)
if ! cmd_exists 'fasd'; then
  print_error "FASD not found. Looks like the default packages were not installed."
  exit 1
fi

if ! cmd_exists 'nvim'; then
  print_error "NeoVim (nvim) not found. Looks like the default packages were not installed."
  exit 1
fi

exit 0
