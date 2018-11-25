# mackup restore settings
ln -sfv "$DOTFILES_DIR/etc/mackup/.mackup.cfg" ~
mackup restore

# install VSCode settings sync plugin
/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension shan.code-settings-sync