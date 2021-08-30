export PATH=$PATH:~/git/bin
export EDITOR=nvim
export BROWSER=/usr/local/bin/w3m
export SSH_ENV="$HOME/.ssh/agent-environment"
export PASSWORD_STORE_GPG_OPTS='--no-throw-keyids'

source ~/.bash_aliases
source ~/.bash_functions

bash_prompt

# History
HISTTIMEFORMAT="%F %T " # add time to bash history
HISTCONTROL=ignoredups # ignore duplicates in history
HISTSIZE=2000 # set no of lines in history
HISTFILESIZE=2000   # set history file max size
shopt -s histappend # append to history

# Misc
set -o vi # use vim commands in bash

# Define colors
blk='\[\033[01;30m\]'   # Black
red='\[\033[01;31m\]'   # Red
grn='\[\033[01;32m\]'   # Green
ylw='\[\033[01;33m\]'   # Yellow
blu='\[\033[01;34m\]'   # Blue
pur='\[\033[01;35m\]'   # Purple
cyn='\[\033[01;36m\]'   # Cyan
wht='\[\033[01;37m\]'   # White
clr='\[\033[00m\]'      # Reset

# pkg install bash-completion 
[[ $PS1 && -f /usr/local/share/bash-completion/bash_completion.sh ]] && \
	source /usr/local/share/bash-completion/bash_completion.sh

# SSH AGENT SETUP
source_ssh_settings
