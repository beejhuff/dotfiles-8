source ./lib.sh

FISH_CONFIG_DIR="$HOME/.config/fish"
if [[ ! -d "$FISH_CONFIG_DIR" ]]; then
  bot "creating fish config directory"
  mkdir -p "$FISH_CONFIG_DIR"
fi

if [[ ! -L "$FISH_CONFIG_DIR/config.fish" ]]; then
  bot "linking fish config"
  ln -s ~/.dotfiles/config.fish "$FISH_CONFIG_DIR/config.fish"
fi

if [[ `echo $0 | grep fish > /dev/null 2>&1` != 0 ]]; then
  running "changing your login shell to fish"
  FISH_LOC=$(which fish)
  echo "$FISH_LOC" | sudo tee -a /etc/shells
  chsh -s "$FISH_LOC";ok
else
  bot "looks like you are already using fish. woot!"
fi

pushd ~/.dotfiles/oh-my-fish > /dev/null 2>&1

bin/install --offline

popd > /dev/null 2>&1

curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs git.io/fisher

fish -c "omf install lambda"
fish -c "omf install https://github.com/shanethehat/theme-lambda"
fish -c "omf install thefuck"
fish -c "omf install tab"
fish -c "omf install sublime"
fish -c "omf install https://github.com/oh-my-fish/plugin-functional"

fish fisher get
