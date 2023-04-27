# brandondtb's dotfiles

My personal dotfiles. Use them as you wish.

**Warning: the install script will overwrite existing dotfiles**

## Prerequisites

* Zsh
* direnv
* [Python build dependencies](https://github.com/pyenv/pyenv/wiki#suggested-build-environment)

To set up: 

1. Clone the repo to your home directory. It expects to be in `~/dotfiles`.
2. Run `git submodule update --init`. This sets up pyenv and zplug.
3. Run `./install.sh`. This symlinks all the dotfiles to their correct locations.

## What's included

* Zsh configuration with zplug.
* Emacs configuration (basic, evil, from scratch). WIP.
* Neovim configuration with completions via LSP & Co-pilot.
* Tmux configuration (basic).

## Additional tools
1. [Github Copilot CLI](https://www.npmjs.com/package/@githubnext/github-copilot-cli)
2. tsserver
