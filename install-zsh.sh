
source ./lib.sh

if [[ `echo $0 | grep zsh > /dev/null 2>&1` != 0 ]]; then
  running "changing your login shell to zsh"
  chsh -s $(which zsh);ok
else
  bot "looks like you are already using zsh. woot!"
fi

bot "creating symlinks for zsh dotfiles"

symlinkifne .profile
symlinkifne .shellaliases
symlinkifne .shellfn
symlinkifne .shellpaths
symlinkifne .shellvars
symlinkifne .zlogout
symlinkifne .zprofile
symlinkifne .zshenv
symlinkifne .zshrc

