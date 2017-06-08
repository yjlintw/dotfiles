# This is a very basic test file,
# meant for smoke testing the installation process in a CI envirorment

# Sanity test for ZSH:
if [[ ! "$SHELL" =~ "zsh" ]]; then
  echo "Your shell seems not to have changed to zsh."
  exit 1
fi

# Testing the existance of a few packages we install
# (via Brew on OSX, apt-get on Linux)
if [[ ! "`type fasd`" =~ "not found" ]]; then
  echo "FASD not found. Looks like the default packages were not installed."
  exit 1
fi

if [[ ! "`type nvim`" =~ "not found" ]]; then
  echo "NeoVim (nvim) not found. Looks like the default packages were not installed."
  exit 1
fi

exit 0
