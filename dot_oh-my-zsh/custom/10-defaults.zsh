DISABLE_AUTO_TITLE="true"

setopt hist_ignore_all_dups

export PATH="/usr/local/opt/curl/bin:$PATH:$HOME/.composer/vendor/bin:$HOME/bin";

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='code -w';
fi

export LANG="en_US.UTF-8"
export LANGUAGE=$LANG
export LC_ALL="en_US.UTF-8"
