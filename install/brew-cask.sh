if ! is-macos -o ! is-executable brew; then
  echo "Skipped: Homebrew-Cask"
  return
fi

brew tap caskroom/versions
brew tap caskroom/cask
brew tap caskroom/fonts

# Install packages

apps=(
  dash2
  dropbox
  docker
  firefox
  flux
  font-fira-code
  glimmerblocker
  google-chrome
  hammerspoon
  kaleidoscope
  macdown
  opera
  screenflow
  slack
  sourcetree
  spectacle
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
