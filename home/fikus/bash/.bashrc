# PATH variable
export PATH=$PATH:/home/fikus/git/bin

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
