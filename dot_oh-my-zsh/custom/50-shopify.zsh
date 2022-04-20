[[ -f /opt/dev/sh/chruby/chruby.sh ]] && type chruby >/dev/null 2>&1 || chruby () { source /opt/dev/sh/chruby/chruby.sh; chruby "$@"; }
if [[ -f /opt/dev/dev.sh ]]; then source /opt/dev/dev.sh; fi

# Shopify dev aliases
alias d='dev'
alias ds='dev server'
alias da='dev all'
alias dup='dev up'
alias dups='dev up && dev server'
alias dupa='dev up && dev all'
alias ddup='dev down && dev up'
alias ddups='dev down && dev up && dev server'
alias ddupa='dev down && dev up && dev all'
alias dct='TZ=GMT dev client-test'
alias dwc='TZ=GMT dev web-checks'
alias ddupup='dev down && dev update && dev up'
alias dcd='dev cd'
alias ddown='dev down'

alias fbs='dev cd fbs'
alias 'sfn-webhooks'='dev cd sfn-webhooks'
alias warehouse='dev cd warehouse'
