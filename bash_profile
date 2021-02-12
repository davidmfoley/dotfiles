
export HISTCONTROL=ignoredups:erasedups  # no duplicate entries
export HISTSIZE=100000                   # big big history
export HISTFILESIZE=100000               # big big history
shopt -s histappend                      # append to history, don't overwrite it

#shopt -s globstar

# Save and reload the history after each command finishes
#export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

source ~/.bashrc
source ~/.profile

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

complete -C aws_completer aws

export PATH="$HOME/.cargo/bin:$PATH"
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
[ -s /usr/local/etc/bash_completion.d/tmux ] && source /usr/local/etc/bash_completion.d/tmux
[ -s /usr/local/etc/bash_completion.d/git-completion.bash ] && source /usr/local/etc/bash_completion.d/git-completion.bash
# [ -s /usr/local/etc/bash_completion.d/aws_bash_completer ] && source /usr/local/etc/bash_completion.d/aws_bash_completer

. $HOME/.asdf/asdf.sh

# Added by serverless binary installer
export PATH="$HOME/.serverless/bin:$PATH"

