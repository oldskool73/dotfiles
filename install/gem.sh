if ! is-macos -o ! is-executable brew; then
  echo "Skipped: gem"
  return
fi

brew install gpg2

# key import failing!
#gpg2 --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
curl -sSL https://rvm.io/mpapis.asc | gpg --import -

\curl -sSL https://get.rvm.io | bash -s stable

source ~/.rvm/scripts/rvm

~/.rvm/bin/rvm install 2.5

# ...this doesn't work until you launch a new terminal...

~/.rvm/bin/rvm use 2.5 --default
gem install pygmentize
