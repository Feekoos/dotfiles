# PATH variable
export PATH=$PATH:/home/fikus/git/bin

# Custom bash prompt via kirsle.net/wizards/ps1.html
export PS1="\[$(tput bold)\]\[$(tput setaf 2)\][\u@\h \W]\\$ \[$(tput sgr0)\]"
export BROWSER=/usr/local/bin/w3m

# Aliases
alias vim='nvim'
alias filip='neomutt -F ~/.mutt/neomuttrc_filip'
alias mutt='filip'
alias ps='ps -ax'
alias ls='ls --color=auto'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias untar='tar xzvf'
alias update='sh /home/fikus/git/bin/update-sys.sh'
alias rm='rm -i'


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
