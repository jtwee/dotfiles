OMZ_DIR="$HOME/.oh-my-zsh"
CHEZ_DIR="$HOME/.local/share/chezmoi"
P10K_DIR="$OMZ_DIR/custom/themes/powerlevel10k"

[ ! -d "$OMZ_DIR" ] && sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" --unattended

[ ! -d "$CHEZ_DIR" ] && sh -c "$(curl -fsSL chezmoi.io/get)" -- init --apply https://github.com/jtwee/dotfiles.git

[ ! -d "$P10K_DIR" ] && git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "$P10K_DIR"
