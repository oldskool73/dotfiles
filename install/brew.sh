if ! is-macos -o ! is-executable ruby -o ! is-executable curl -o ! is-executable git; then
  echo "Skipped: Homebrew (missing: ruby, curl and/or git)"
  return
fi

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew tap Goles/battery
brew update
brew upgrade

# Install packages

apps=(
  awscli
  bash-completion2
  bats
  battery
  consul
  coreutils
  diff-so-fancy
  docker-completion
  docker-compose
  docker-credential-helper
  docker-credential-helper-ecr
  docker-ls
  dockutil
  ffmpeg
  fasd
  git
  git-extras
  gnu-sed --with-default-names
  grep --with-default-names
  hub
  httpie
  imagemagick
  jq
  lynx
  mackup
  nano
  nomad
  pandoc
  peco
  php
  psgrep
  python
  redis
  shellcheck
  ssh-copy-id
  terraform
  tree
  unar
  wget
  wifi-password
  yarn --without-node
)

brew install "${apps[@]}"

export DOTFILES_BREW_PREFIX_COREUTILS=$(brew --prefix coreutils)
set-config "DOTFILES_BREW_PREFIX_COREUTILS" "$DOTFILES_BREW_PREFIX_COREUTILS" "$DOTFILES_CACHE"

ln -sfv "$DOTFILES_DIR/etc/mackup/.mackup.cfg" ~
