if is-macos ; then
  echo "Skipped: APT"
  return
fi

curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

sudo apt-get update

apps=(
  awscli
  bats
  consul
  coreutils
  docker.io
  docker-compose
  ffmpeg
  fasd
  git
  git-extras
  grep
  hub
  httpie
  imagemagick
  jq
  lynx
  nano
  nomad
  pandoc
  peco
  php-cli
  python
  redis
  shellcheck
  tree
  unar
  wget
  --no-install-recommends yarn
)

sudo apt-get install "${apps[@]}"