# Custom theme for Zsh

setopt PROMPT_SUBST

# Colours
_theme_blue="%F{blue}"
_theme_cyan="%F{cyan}"
_theme_green="%F{green}"
_theme_grey="%F{240}"
_theme_magenta="%F{magenta}"
_theme_red="%F{red}"
_theme_yellow="%F{yellow}"
_reset_color="%f"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$_theme_green%} "
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_SEPARATOR="|"
ZSH_THEME_GIT_PROMPT_BRANCH="%{$_theme_green%}"
ZSH_THEME_GIT_PROMPT_STAGED="%{$_theme_green%}%{●%G%}"
ZSH_THEME_GIT_PROMPT_CONFLICTS="%{$_theme_red%}%{✖%G%}"
ZSH_THEME_GIT_PROMPT_CHANGED="%{$_theme_blue%}%{✚%G%}"
ZSH_THEME_GIT_PROMPT_BEHIND="%{$_theme_magenta%}%{↓%G%}"
ZSH_THEME_GIT_PROMPT_AHEAD="%{$_theme_magenta%}%{↑%G%}"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$_theme_cyan%}%{?%G%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$_theme_green%}%{✔%G%}"


# Prompt style
PROMPT=$'%{$_theme_yellow%}%~%{$_reset_color%} $(git_super_status) %(?.%{$_theme_grey%}.%{$_theme_red%})%(!.#.$)%{$_reset_color%} '
RPROMPT=''
