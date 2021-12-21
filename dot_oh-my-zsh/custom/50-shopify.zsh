[[ -f /opt/dev/sh/chruby/chruby.sh ]] && type chruby >/dev/null 2>&1 || chruby () { source /opt/dev/sh/chruby/chruby.sh; chruby "$@"; }
if [[ -f /opt/dev/dev.sh ]]; then source /opt/dev/dev.sh; fi
if [ -e ~/.nix-profile/etc/profile.d/nix.sh ]; then source ~/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer

# Shopify dev aliases
alias d='dev'
alias dup='dev up'
alias dups='dev up && dev server'
alias ddup='dev down && dev up'
alias ddups='dev down && dev up && dev server'
alias dct='TZ=UTC dev client-test'
alias dwc='TZ=UTC dev web-checks'
alias ddupup='dev down && dev update && dev up'
alias dcd='dev cd'
alias dsa='dev stop-all'
