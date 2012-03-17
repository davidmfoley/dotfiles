source /usr/local/etc/bash_completion.d/git-completion.bash
source /usr/local/etc/bash_completion.d/tmux
export PS1='\[\e[35;40m\]\h:\[\e[36;40m\]\W\[\e[32;40m\]$(__git_ps1 "(%s)") \[\e[33;40m\]\$\[\e[0m\] '

export HISTCONTROL=ignoredups:erasedups  # no duplicate entries
export HISTSIZE=100000                   # big big history
export HISTFILESIZE=100000               # big big history
shopt -s histappend                      # append to history, don't overwrite it

# Save and reload the history after each command finishes
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

source ~/.profile
