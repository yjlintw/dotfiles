     _     _           _
    | |   | |         | |
    | |___| |_____  __| | ____
    |_____  (____ |/ _  |/ ___)
     _____| / ___ ( (_| | |
    (_______\_____|\____|_|

    # Yet Another Dotfile Repo - Marelo version

    OSX install:
    sh -c "`curl -fsSL https://raw.githubusercontent.com/lfilho/dotfiles/master/install.sh`"

    Linux install:
    sudo apt-get install git
    wget -O - https://raw.githubusercontent.com/lfilho/dotfiles/master/install-linux.sh | bash

To get to know this project, please first refer to the [original project](https://github.com/skwp/dotfiles), read their README and then come back to this one :-)

Here are the differences with the upstream repo:

## Differences of this fork with the original project:
  * VIM
    * Vim not only is now installed, but it is installed with support to `if_lua` and custom file icons. The instalations takes the lastest stable version in `brew` (currently, > 7.4)
    * Ruby stuff commented out (not my main dev language atm)
    * More javascript goodies for vim (my main dev language atm):
      * More elements highlighted
      * [NodeJS Dictionary](http://github.com/guileen/vim-node) + neocomplete hook
      * [Javascript Dictionary](https://raw.githubusercontent.com/cooldaemon/myhome/master/.vim/dict/javascript.dict) + neocomplete hook
      * [Cosco.vim](http://github.com/lfilho/cosco.vim) for comma and semi-colon insertion bliss
    * [NeoBundle](https://github.com/Shougo/neobundle.vim) instead of Vundle
    * [NeoComplete](https://github.com/Shougo/neocomplete.vim) instead NeoComplcache
    * [Sideways.vim](https://github.com/AndrewRadev/sideways.vim)
    * All custom mappings that manipulated registers were not working as YR was overriding them (for eg. `Y`). Now it works.
    * "Stop visual paste insanity" now works
    * Custom keymaps for a specif plugin live on its config file, for easier finding.
    * [Unite](https://github.com/Shougo/unite.vim) (which got rid of CtrlP, LustyJuggler and Ag)
    * Support for [project/folder specific .vimrc configuration](https://github.com/MarcWeber/vim-addon-local-vimrc)
    * Support for Mustache templating system
    * Support for other vim themes than Solarized (right now my personal theme and base16 themes are included)
    * Splits open to the right (not left) and VSplits open to the bottom (not top)
    * CamelCaseMotion default mappings (does not override vim's default behaviour)
    * Strips trailing withespace automatically upon save
    * Perl regex style by default
    * Config files are externalized in settings.vim instead of auto-loaded under plugin/ folder. Now we have more control and flexibility of ther runtime path order.
  * OSX
    * Config to open MacVim maximized by default
  * ZSH
    * `v` alias for opening `mvim` (MacVim)
    * My personal zsh prompt theme (marelo)

## TODOs
  * Auto set the iTerm color theme without asking for confirmation
  * Make it work better / install brew dependecies on linux

## Contributions are very welcome
