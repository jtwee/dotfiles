# Shopify-specific aliases
alias dcd='dev cd'
alias osui='dev cd online-store-ui'
alias osw='dev cd online-store-web'
alias web='dev cd web'
alias shop='dev cd shopify'

if [[ $SPIN -ne 1 ]]; then
  alias ds='dev server'
  alias da='dev all'
  alias dup='dev up'
  alias dups='dev up && dev server'
  alias dupa='dev up && dev all'
  alias ddup='dev down && dev up'
  alias ddups='dev down && dev up && dev server'
  alias ddupa='dev down && dev up && dev all'
  alias ddupup='dev down && dev update && dev up'
  alias ddown='dev down'
fi
