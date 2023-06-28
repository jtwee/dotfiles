# Shopify-specific aliases
alias dcd='dev cd'
alias osui='dev cd online-store-ui'
alias osw='dev cd online-store-web'
alias sfr='dev cd storefront-renderer'
alias shp='dev cd shopify'
alias web='dev cd web'

if [[ $SPIN -ne 1 ]]; then
  function suposw {
    local branch=""
    local name=""
    local input="$@"
    local args=()

    while (($#)); do
      local params=$#
      case "$1" in
      -b=* | --branch=*)
        if [[ -z $branch ]]; then
          branch=${1/"--branch="/"-b="}
          branch=${branch/#"-b="/}
          shift
        fi
        ;;
      -n=* | --name=*)
        if [[ -z $name ]]; then
          name=${1/"--name="/"-n="}
          name=${name/#"-n="/}
          shift
        fi
        ;;
      *)
        if [[ -z $name && ! $1 = -* ]]; then
          name=${1/"--name="/"-n="}
          name=${name/#"-n="/}
          shift
        fi
        ;;
      esac

      if [[ $# == $params ]]; then
        echo "Incorrect arguments provided: \"$input\""
        return 1
      fi
    done

    name="${name:-$branch}"

    if [[ ! -z $branch ]]; then
      args=("${args[@]}" "--config" "online-store-web.branch=$branch")
    fi
    if [[ ! -z $name ]]; then
      args=("${args[@]}" "--name" "${name//[^a-z0-9-]/-}")
    fi

    spin up online-store-web --config shopify.env.SHOP_1_BETA_FLAGS='metaobject_pages' --wait "${args[@]}"
  }
fi
