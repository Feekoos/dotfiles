# PATH variable
export PATH=$PATH:/home/fikus/git/bin

# Default editor
export EDITOR=nvim

# Custom bash prompt via kirsle.net/wizards/ps1.html
export PS1="\[$(tput bold)\]\[$(tput setaf 2)\][\u@\h \W]\\$ \[$(tput sgr0)\]"
export BROWSER=/usr/local/bin/w3m

# Aliases
source .bash_aliases

# Functions
myfind () {
	find ./ -iname $1 -print
}

# pkg install bash-completion 
[[ $PS1 && -f /usr/local/share/bash-completion/bash_completion.sh ]] && \
	source /usr/local/share/bash-completion/bash_completion.sh

#if [ -f /etc/bash_completion ]; then
#	  source /etc/bash_completion
#fi

export PASSWORD_STORE_GPG_OPTS='--no-throw-keyids'

# SSH AGENT SETUP
SSH_ENV="$HOME/.ssh/agent-environment"

function start_agent {
    echo "Initialising new SSH agent..."
    /usr/bin/ssh-agent | sed 's/^echo/#echo/' > "${SSH_ENV}"
    echo succeeded
    chmod 600 "${SSH_ENV}"
    . "${SSH_ENV}" > /dev/null
    /usr/bin/ssh-add;
}

# Source SSH settings, if applicable

if [ -f "${SSH_ENV}" ]; then
    . "${SSH_ENV}" > /dev/null
    #ps ${SSH_AGENT_PID} doesn't work under cywgin
    ps -ef | grep ${SSH_AGENT_PID} | grep ssh-agent$ > /dev/null || {
        start_agent;
    }
else
    start_agent;
fi
