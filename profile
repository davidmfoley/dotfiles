export NODE_PATH=/usr/local/lib/node:/usr/local/lib/node_modules;
# Amazon Web Services
#export AWS_IAM_HOME='/usr/local/bin/aws/iam/'
#export JAVA_HOME="$(/usr/libexec/java_home)"


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

function __main_branch {
  git branch -a | grep 'origin/master' >> /dev/null && printf 'master' || printf 'main'
}

function __main_branch_action {
  DOTHETHING="git $1$(__main_branch) $2 $3 $4 $5 $6"
  echo  "$DOTHETHING"
  eval  "$DOTHETHING"
}

function grom {
  __main_branch_action "rebase origin/" $1 $2 $3 $4 $5
}

function gmom {
  __main_branch_action "merge origin/" $1 $2 $3 $4 $5
}

alias ll='ls -al'
alias be='bundle exec'

alias gf='git fetch'
alias gm='git merge'
alias grc='git rebase --continue'
alias grpo='git remote prune origin'

# delete merged branches
alias gdmb="git branch --merged | grep -v '*' | xargs git branch -d"
alias gru="git remote -v | sed '/heroku/d' | grep fetch | cut -f 1 | xargs -I {} git remote update {} --prune; git submodule update"
alias gs="git status"
alias gdc="git diff --cached"
alias glxx='git log --graph --all --decorate'
alias glx='git log --graph --all --decorate --pretty=format:"%C(magenta)%h %C(blue)%ad %C(green)%an %C(cyan)%s %C(yellow bold)%d"'
alias glxr='git log --graph --all --decorate --pretty=format:"%C(magenta)%h %C(blue)%ad %C(green)%an %C(cyan)%s %C(yellow bold)%d" --date=relative'
alias groom='git rebase --onto origin/master $(git merge-base HEAD origin/master)'

alias gvim='/Applications/MacVim.app/Contents/MacOS/Vim -g'
alias cukewip='RAILS_ENV=test rake cucumber:wip'
alias cuke='RAILS_ENV=test cucumber'
alias rdbr='rake db:drop db:create db:migrate db:test:prepare'
alias rdbrs='rake db:drop db:create db:migrate db:test:prepare db:seed'
alias rdbm='rake db:migrate db:test:prepare'

alias xco="osascript -e \"tell application \\\"XCode\\\" to quit\" -e \"delay 2\"; open "
alias awslocal="aws --endpoint-url=http://localhost:4566"

#alias vim to nvim if present
type nvim >/dev/null 2>&1 && alias vim='nvim'

export CLICOLOR=1
export LSCOLORS=gxfxCxDxcxegedabagacad
export EDITOR='nvim'

export GOPATH="$HOME/go"
export PATH=~/scripts:/usr/local/bin:/usr/bin:/usr/local/share/npm/bin:$PATH:$GOPATH/bin


ulimit -n 2560

eval "$(direnv hook $0)"

export PATH="$HOME/.cargo/bin:$PATH"

function iterm_color {
    case $1 in
    green)
    echo -e "\033]6;1;bg;red;brightness;57\a"
    echo -e "\033]6;1;bg;green;brightness;197\a"
    echo -e "\033]6;1;bg;blue;brightness;77\a"
    ;;
    red)
    echo -e "\033]6;1;bg;red;brightness;270\a"
    echo -e "\033]6;1;bg;green;brightness;60\a"
    echo -e "\033]6;1;bg;blue;brightness;83\a"
    ;;
    orange)
    echo -e "\033]6;1;bg;red;brightness;227\a"
    echo -e "\033]6;1;bg;green;brightness;143\a"
    echo -e "\033]6;1;bg;blue;brightness;10\a"
    ;;
    blue)
    echo -e "\033]6;1;bg;red;brightness;7\a"
    echo -e "\033]6;1;bg;green;brightness;33\a"
    echo -e "\033]6;1;bg;blue;brightness;250\a"
    ;;
    purple)
    echo -e "\033]6;1;bg;red;brightness;207\a"
    echo -e "\033]6;1;bg;green;brightness;0\a"
    echo -e "\033]6;1;bg;blue;brightness;210\a"
    ;;
    esac
 }
