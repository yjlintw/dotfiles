#!/usr/bin/env bash

cd "$(dirname "${BASH_SOURCE[0]}")" && . "../utils.sh"

main() {
  print_in_purple "\n   Installing Brew\n\n"

  if ! cmd_exists "brew"; then
    # Default to macos:
    local install_folder='/usr/local'
    local tarball_url='https://github.com/Homebrew/brew/tarball/master'

    if get_os != "macos"; then
      install_folder="/home/$USER/.linuxbrew"
      tarball_url='https://github.com/Linuxbrew/brew/tarball/master'
    fi

    # We need sudo here because we're installing it to a folder
    # outside the user's home dir
    mkdir -p $install_folder && \
      curl -L $tarball_url | tar xz --strip 1 -C $install_folder && \
      path_prepend "${install_folder}/bin"

    print_result $? 'Brew installation.'
  else
    print_success 'Already installed.'
  fi
}

main
