OMZ_DIR="$HOME/.oh-my-zsh"
CHEZ_DIR="$HOME/.local/share/chezmoi"
BIN_DIR="$HOME/bin"

if [ ! -d "$OMZ_DIR" ]; then
  echo "Installing oh-my-zsh..."
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" --unattended
fi

if ! command -v chezmoi &> /dev/null; then
  echo "Installing Chezmoi..."
  sh -c "$(curl -fsLS chezmoi.io/get) -b $BIN_DIR"
fi

if [ ! -d "$CHEZ_DIR" ] && [ -x "$BIN_DIR/chezmoi" ]; then
  echo "Configuring dotfiles..."
  "$BIN_DIR/chezmoi" init --apply https://github.com/jtwee/dotfiles.git
fi
