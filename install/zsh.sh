if ! is-macos -o ! is-executable brew; then
  echo "Skipped: Zsh"
  return
fi

brew install zsh
brew install antigen
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# relink zshrc as oh-my overwrites it
ln -sfv "$DOTFILES_DIR/runcom/.zshrc" ~

# install powerline & fonts
pip3 install powerline-status
brew cask install font-powerline-symbols \
  font-source-code-pro-for-powerline \
  font-menlo-for-powerline \
  font-roboto-mono-for-powerline

# use zsh as shell
chsh -s /bin/zsh