DISABLE_AUTO_TITLE="true"

setopt hist_expire_dups_first
setopt hist_ignore_all_dups

if [[ $(which cursor) ]]; then
  export DEFAULT_EDITOR='cursor'
elif [[ $(which code) ]]; then
  export DEFAULT_EDITOR='code'
else
  export DEFAULT_EDITOR='vim'
fi

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR="$DEFAULT_EDITOR -w"
fi

export LANG="en_US.UTF-8"
export LANGUAGE=$LANG
export LC_ALL="en_US.UTF-8"

KEYTIMEOUT=10
bindkey -M menuselect '\e' send-break
bindkey '^ ' autosuggest-accept

_esc_to_clear_things() {
  zle kill-line
  zle autosuggest-clear
}
zle -N _esc_to_clear_things
bindkey '\e' _esc_to_clear_things

ZSH_AUTOSUGGEST_CLEAR_WIDGETS+=(bracketed-paste menu-complete expand-or-complete)
ZSH_AUTOSUGGEST_HISTORY_IGNORE="cd *"

zstyle ':omz:plugins:alias-finder' autoload yes
zstyle ':omz:plugins:alias-finder' longer no
zstyle ':omz:plugins:alias-finder' exact yes
zstyle ':omz:plugins:alias-finder' cheaper yes
