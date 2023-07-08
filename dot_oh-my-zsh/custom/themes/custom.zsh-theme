# Custom theme for Zsh

setopt PROMPT_SUBST

# Colours
_spin_blue='%F{33}'
_theme_blue='%F{blue}'
_theme_cyan='%F{cyan}'
_theme_green='%F{green}'
_theme_grey='%F{240}'
_theme_magenta='%F{magenta}'
_theme_red='%F{red}'
_theme_yellow='%F{yellow}'
_reset_color='%f'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$_theme_green%} "
ZSH_THEME_GIT_PROMPT_SUFFIX=''
ZSH_THEME_GIT_PROMPT_SEPARATOR='|'
ZSH_THEME_GIT_PROMPT_BRANCH="%{$_theme_green%}"
ZSH_THEME_GIT_PROMPT_STAGED="%{$_theme_green%}●"
ZSH_THEME_GIT_PROMPT_CONFLICTS="%{$_theme_red%}✖"
ZSH_THEME_GIT_PROMPT_CHANGED="%{$_theme_blue%}✚"
ZSH_THEME_GIT_PROMPT_BEHIND="%{$_theme_magenta%}↓"
ZSH_THEME_GIT_PROMPT_AHEAD="%{$_theme_magenta%}↑"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$_theme_cyan%}?"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$_theme_green%}✔"

if [[ $SPIN -eq 1 || -n $SSH_CONNECTION ]]; then
  _theme_yellow='%F{222}'
fi

if [[ $SPIN -eq 1 ]]; then
  _prompt_hostname="$_spin_blue%{꩜%G%}  $_theme_yellow"
elif [[ -n $SSH_CONNECTION ]]; then
  _prompt_hostname="$_theme_red%m$_reset_color:$_theme_yellow"
else
  _prompt_hostname=''
fi

PROMPT=$'%{$_theme_yellow%}$_prompt_hostname%~%{$_reset_color%} $(git_super_status) %(?.%{$_theme_grey%}.%{$_theme_red%})%(!.#.$)%{$_reset_color%} '
RPROMPT=''
