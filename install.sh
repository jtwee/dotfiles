OMZ_DIR="$HOME/.oh-my-zsh"
CHEZ_DIR="$HOME/.local/share/chezmoi"
P10K_DIR="$OMZ_DIR/custom/themes/powerlevel10k"

if [ ! -d "$OMZ_DIR" ]; then
  echo "Installing oh-my-zsh..."
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" --unattended
fi

if ! command -v chezmoi &> /dev/null; then
  echo "Installing Chezmoi..."
  sh -c "$(curl -fsLS chezmoi.io/get)"
fi

if [ ! -d "$CHEZ_DIR" ]; then
  echo "Configuring dotfiles..."
  chezmoi init --apply https://github.com/jtwee/dotfiles.git
fi

if [ ! -d "$P10K_DIR" ]; then
  echo "Installing powerlevel10k..."
  git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "$P10K_DIR"
fi
