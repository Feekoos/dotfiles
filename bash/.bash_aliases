# view 10 commands of most use in history
# history | awk '{cmd[$2]++} END {for(elem in cmd) {print cmd[elem] " " elem}}' | sort -n -r | head -10

alias aliases='cat ~/.bash_aliases'
alias ps='ps -ax'
alias untar='tar xzvf'
alias update='sh /home/fikus/git/bin/update-sys.sh'
alias rm='rm -i'
alias mv='mv -v'    # Verbos
alias stow='stow -vt'   # Package stow required, Verbose + target directory
alias diff='diff -u'
alias c='clear'
alias h='history'
alias histg='history | grep'
alias mkdir='mkdir -pv' # Make parent directories + verbose
alias wget='wget -c' # Always try to continue downloading a partially downloaded file
alias df='pydf' # Package pydf required
alias du='ncdu' # Package ncdu required
alias du_o='sudo du -ach | sort -h'
alias ps='ps -uxf'
alias psg='ps -ux | grep -v grep | grep -i -e VSZ -e' # Search for a process
alias myip="curl http://ipecho.net/plain; echo"

# Reduce all images in a directory to 690px width for web - package imagemagick required
alias webify="mogrify -resize 690\> *.png"

# Auto sftp to a dir
alias upload="sftp username@server.com</^>:/path/to/upload/directory"

# Make a directory and all parent directories with verbosity.
alias mkdir='mkdir -p -v'

# Display the directory structure better.
alias tree='tree --dirsfirst -F'

# Move to the parent folder.
alias ..='cd ..;pwd'

# Move up two parent folders.
alias ...='cd ../..;pwd'

# Move up three parent folders.
alias ....='cd ../../..;pwd'

# View the calender by typing the first three letters of the month.
alias jan='cal -m 01'
alias feb='cal -m 02'
alias mar='cal -m 03'
alias apr='cal -m 04'
alias may='cal -m 05'
alias jun='cal -m 06'
alias jul='cal -m 07'
alias aug='cal -m 08'
alias sep='cal -m 09'
alias oct='cal -m 10'
alias nov='cal -m 11'
alias dec='cal -m 12'

# ls aliases
alias ls='ls --color'
alias la='ls -A'
alias l='ls -CF'
alias ll='ls -alF'

# neoMutt aliases
alias filip='neomutt -F ~/.mutt/neomuttrc_filip'
alias nemo='neomutt -F ~/.mutt/muttrc_nemo_ru'
alias mutt='filip'

# neoVim aliases
alias vi='nvim -u NONE'
alias nvim='nvim -u ~/.config/nvim/init.vim'

# Git aliases
# View Git status.
alias gs='git status'

# Add a file to Git.
alias ga='git add'

# Add all files to Git.
alias gaa='git add --all'

# Commit changes to the code.
alias gc='git commit'

# View the Git log.
alias gl='git log --oneline'

# Create a new Git branch and move to the new branch at the same time. 
alias gb='git checkout -b'

# View the difference.
alias gd='git diff'

