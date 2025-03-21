DISABLE_AUTO_TITLE="true"

setopt hist_expire_dups_first
setopt hist_ignore_all_dups

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='code -w'
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
