#!/bin/zsh

echo "Installing prezto..."
if [ ! -e ${ZDOTDIR:-$HOME}/.zprezto ]; then
  git clone --recursive https://github.com/smh/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
fi

setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}"/.${rcfile:t}
done

