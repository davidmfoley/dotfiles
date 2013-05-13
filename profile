export PATH=~/scripts:/usr/local/bin:/usr/bin:$PATH
export NODE_PATH=/usr/local/lib/node:/usr/local/lib/node_modules;
# Amazon Web Services
export AWS_IAM_HOME='/usr/local/bin/aws/iam/'
export JAVA_HOME='/Library/Java/Home'


function __current_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'
}

function __current_branch_action {
  DOTHETHING="git $1$(__current_branch) $2 $3 $4 $5 $6"
  echo  "$DOTHETHING"
  eval  "$DOTHETHING"
}

function gmox {
  __current_branch_action "merge origin/" $1 $2 $3 $4 $5
}

function grox {
  __current_branch_action "rebase origin/" $1 $2 $3 $4 $5
}
function gpox {
  __current_branch_action "push origin " $1 $2 $3 $4 $5
}

function awklog {
  echo "awk ' /^$/ {flag=0} /Started.+$2/ {flag=1} flag { print }' $1"
  eval "awk ' /^$/ {flag=0} /Started.+$2/ {flag=1} flag { print }' $1"
}

alias ll='ls -al'
alias be='bundle exec'

alias gf='git fetch'
alias gm='git merge'
alias gmom='git merge origin/master'
alias grom='git rebase origin/master'
alias grc='git rebase --continue'
alias grpo='git remote prune origin'
alias gru="git remote show | sed '/heroku/d' | xargs -I {} git remote update {} --prune; git submodule update"
alias gs="git status"
alias gdc="git diff --cached"
alias glxx='git log --graph --all --decorate'
alias glx='git log --graph --all --decorate --pretty=format:"%C(magenta)%h %C(blue)%ai %C(green)%an %C(cyan)%s %C(yellow bold)%d"'
alias gvim='/Applications/MacVim.app/Contents/MacOS/Vim -g'
alias cukewip='RAILS_ENV=test rake cucumber:wip'
alias cuke='RAILS_ENV=test cucumber'
alias rdbr='rake db:drop db:create db:migrate db:test:prepare'
alias rdbrs='rake db:drop db:create db:migrate db:test:prepare db:seed'
alias rdbm='rake db:migrate db:test:prepare'

alias xco="osascript -e \"tell application \\\"XCode\\\" to quit\" -e \"delay 2\"; open "

#alias vim to mvim if present
type mvim >/dev/null 2>&1 && alias vim='mvim -v'

export CLICOLOR=1
export LSCOLORS=gxfxCxDxcxegedabagacad
export EDITOR='vim'

[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm

