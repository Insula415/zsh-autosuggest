#!/bin/bash

function enable_suggestions {
  sed -i.bak 's/(git zsh-syntax-highlighting web-search)/(git zsh-autosuggestions zsh-syntax-highlighting web-search)/' ~/.zshrc
  echo "zsh-autosuggestions enabled."
}

function disable_suggestions {
  sed -i.bak 's/(git zsh-autosuggestions zsh-syntax-highlighting web-search)/(git zsh-syntax-highlighting web-search)/' ~/.zshrc
  echo "zsh-autosuggestions disabled."
}

case "$1" in
  -enable) enable_suggestions ;;
  -disable) disable_suggestions ;;
  *)
    echo "Usage: suggest -enable | -disable"
    exit 1
    ;;
esac

zsh -c 'source ~/.zshrc'
