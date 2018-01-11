source /usr/local/etc/bash_completion.d/git-completion.bash
source /usr/local/etc/bash_completion.d/tmux

export HISTCONTROL=ignoredups:erasedups  # no duplicate entries
export HISTSIZE=100000                   # big big history
export HISTFILESIZE=100000               # big big history
shopt -s histappend                      # append to history, don't overwrite it

#shopt -s globstar

# Save and reload the history after each command finishes
#export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

source ~/.profile
function __current_branch_ps1 {
local branch="$(__current_branch)"
  if [ -z "$branch" ]; then
    echo ''
  else
    echo "[$branch] "
  fi
}
# export PS1='\[\e[35;40m\]\h:\[\e[36;40m\]\W\[\e[32;40m\] $(__current_branch_ps1 "(%s)")\[\e[33;40m\]\$\[\e[0m\] '

export PS1='\[\e[34;40m\]\A \[\e[35;40m\]\h:\[\e[36;40m\]\W\[\e[32;40m\] $(__current_branch_ps1 "(%s)")\[\e[33;40m\]\$\[\e[0m\] '

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

complete -C aws_completer aws

[ -s "/Users/dave/.nvm/nvm.sh" ] && . "/Users/dave/.nvm/nvm.sh" # This loads nvm

export PATH="$HOME/.yarn/bin:$PATH"

export PATH="$HOME/.cargo/bin:$PATH"
