if is-macos ; then
  echo "Skipped: APT"
  return
fi

sudo apt-get update

apps=(
  firefox
  google-chrome-stable
  chromium-browser
  slack-desktop
  virtualbox
  vlc
)

sudo apt-get install "${apps[@]}"