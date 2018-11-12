if ! is-macos -o ! is-executable brew; then
  echo "Skipped: Zsh"
  return
fi

brew install zsh
brew install antigen
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
