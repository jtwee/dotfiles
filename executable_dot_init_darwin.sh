#!/bin/zsh

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

if [[ $CPUTYPE == 'arm64' ]]; then
  brew_prefix='/opt/homebrew'
else
  brew_prefix='/usr/local'
fi

${brew_prefix}/bin/brew install chezmoi

${brew_prefix}/bin/chezmoi init --apply jtwee/dotfiles
