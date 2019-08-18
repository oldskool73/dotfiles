if ! is-macos -o ! is-executable brew; then
  sudo apt-get install zsh
  sudo git clone https://github.com/zsh-users/antigen.git /usr/local/share/antigen
  sudo apt-get install fonts-powerline
else
  brew install zsh
  brew install antigen
  brew cask install font-powerline-symbols \
    font-source-code-pro-for-powerline \
    font-menlo-for-powerline \
    font-roboto-mono-for-powerline
fi

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" "" --unattended

# relink zshrc as oh-my-zsh overwrites it
ln -sfv "$DOTFILES_DIR/runcom/.zshrc" ~

# install powerline & fonts
pip3 install powerline-status

# use zsh as shell
chsh -s /bin/zsh