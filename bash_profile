source /usr/local/etc/bash_completion.d/git-completion.bash
source /usr/local/etc/bash_completion.d/tmux
export PS1='\[\e[35;40m\]\h:\[\e[36;40m\]\W\[\e[32;40m\]$(__git_ps1 "(%s)") \[\e[33;40m\]\$\[\e[0m\] '

shopt -s histappend

export HISTCONTROL=erasedups
export HISTSIZE=10000
export HISTFILESIZE=10000

source ~/.profile
