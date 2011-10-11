#source ~/.git-completion.sh
source /usr/local/etc/bash_completion.d/git-completion.bash
#source /usr/local/etc/bash_completion.d/git-completion.bash
# MacPorts Installer addition on 2009-11-03_at_07:21:52: adding an appropriate PATH variable for use with MacPorts.
export PATH=/usr/local/bin/:/usr/bin/:$PATH
#export PATH=/usr/local/bin/:/usr/bin/:/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.
#set -x
export HISTCONTROL=erasedups
export HISTSIZE=10000
export HISTFILESIZE=10000

# Amazon Web Services
export AWS_IAM_HOME='/usr/local/bin/aws/iam/'
export JAVA_HOME='/usr/bin/java'

function __current_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'
}

function __current_branch_action {
  echo  "git $1`git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'`"
  eval  "git $1`git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'`"
}

function gmox {
  __current_branch_action "merge origin/"
}

function grox {
  __current_branch_action "rebase origin/"
}
function gpox {
  __current_branch_action "push origin "
}
#shopt -s histappend
alias ll='ls -al'

alias gf='git fetch'
alias gm='git merge'
alias gmom='git merge origin/master'
alias grom='git rebase origin/master'
alias grc='git rebase --continue'
alias grpo='git remote prune origin'
alias gru="git remote show | sed '/heroku/d' | xargs -I {} git remote update {} --prune; git submodule update"
alias gs="git status"
alias gdc="git diff --cached"
alias glx="git log --graph --decorate --all --oneline"
alias glxx="git log --graph --decorate --all"
alias be="bundle exec"

alias gvim='/Applications/MacVim.app/Contents/MacOS/Vim -g'
alias cukewip='RAILS_ENV=test rake cucumber:wip'
alias cuke='RAILS_ENV=test cucumber'
alias rdbr='rake db:drop db:create db:migrate db:test:prepare'
alias rdbrs='rake db:drop db:create db:migrate db:test:prepare db:seed'
alias rdbm='rake db:migrate db:test:prepare'

alias xco="osascript -e \"tell application \\\"XCode\\\" to quit\" -e \"delay 2\"; open "

export CLICOLOR=1
export LSCOLORS=gxfxCxDxcxegedabagacad
export EDITOR='vim'
source ~/.bashrc
[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm

