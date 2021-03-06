if ! is-macos -o ! is-executable brew; then
  echo "Skipped: Homebrew-Cask"
  return
fi

brew tap caskroom/versions
brew tap caskroom/cask
brew tap caskroom/fonts

# Install packages

apps=(
  1password
  dash3
  diffmerge
  dropbox
  docker
  firefox
  flux
  font-fira-code
  glimmerblocker
  google-chrome
  hammerspoon
  iterm2
  kaleidoscope
  kitematic
  macdown
  opera
  postman
  screenflow
  sequel-pro
  slack
  sourcetree
  spectacle
  vagrant
  virtualbox
  visual-studio-code
  vlc
)

for i in "${apps[@]}"; do
  brew cask install "${i}"
done

# Quick Look Plugins (https://github.com/sindresorhus/quick-look-plugins)
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlimagesize webpquicklook suspicious-package qlvideo

# Link Hammerspoon config
if [ ! -d ~/.hammerspoon ]; then ln -sfv "$DOTFILES_DIR/etc/hammerspoon/" ~/.hammerspoon; fi
