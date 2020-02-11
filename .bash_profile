# Setting PATH for Python 2.7 and for homebrew
# The orginal version is saved in .bash_profile.pysave
#PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}:/usr/local/bin:$PATH"

# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
#PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
#export PATH

# something nice to install is cheat.sh --> https://github.com/chubin/cheat.sh


export PATH=$PATH:/usr/local/opt/rabbitmq/sbin
#homebrew
PATH="/usr/local/bin:$PATH"
export PATH

# virtualenv and virtualenvwrapper
export WORKON_HOME=$HOME/.virtualenvs
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3
source /usr/local/bin/virtualenvwrapper.sh

export PYTHONPATH=$PYTHONPATH:/Users/rus003o/.virtualenvs/cv/lib/python3.6/site-packages/tensorflow/models/research:/Users/rus003o/.virtualenvs/cv/lib/python3.6/site-packages/tensorflow/models/research/slim

export CLICOLOR=1
#export TERM=xterm-256color
export LSCOLORS=GxFxCxDxBxegedabagaced

#export GREP_OPTIONS='--color=auto'
unset GREP_OPTIONS

export PS1="\[\033[38;5;214m\][\A] \u\[\033[38;5;251m\]: \[$(tput bold)\]\[$(tput sgr0)\]\[\033[38;5;81m\]\w\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;251m\] |\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"
#export PS1="[\A] \[\033[38;5;214m\]\u@\h\[$(tput sgr0)\]\[\033[38;5;251m\] : \[$(tput bold)\]\[$(tput sgr0)\]\[\033[38;5;81m\]\w\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;251m\] | \[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"

#export PS1="\[\e[38;5;251m\][ \[\e[38;5;81m\]$? \[\e[38;33;251m\]\t \[\e[38;33;251m\]\u \[\e[38;5;81m\]\w \[\e[38;5;251m\]] \$ \[\e[38;5;15m\]"

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob;

# Append to the Bash history file, rather than overwriting it
shopt -s histappend;

# Autocorrect typos in path names when using `cd`
shopt -s cdspell;

# Add `killall` tab completion for common apps
complete -o "nospace" -W "Contacts Calendar Dock Finder Mail Safari iTunes SystemUIServer Terminal" killall;

alias subl-theme="subl ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/Color\ Scheme\ -\ Default/Solarized\ \(Dark\).tmTheme";

alias text='osascript textmessage.applescript';

alias tar='tar -cvf';
alias untar='tar -xvf';

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

alias src='source ~/.bash_profile'
alias pwd="pwd -P"
alias tmux="tmux -2"
alias jobs="jobs -l"

# Easier navigation: .., ..., ...., ....., ~ and -
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ~="cd ~" # `cd` is probably faster to type though
alias -- -="cd -"

alias sl="ls"
alias lla="ls -ahl"
alias la="ls -a"
alias ll="ls -hl"

# List only directories
alias lsd="ls -l ${colorflag} | grep --color=never '^d'"

alias week='date +%V'

# Enable aliases to be sudo’ed
alias sudo='sudo '

# Stopwatch
alias timer='echo "Timer started. Stop with Ctrl-D." && date && time cat && date'

# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en0"
alias ips="ifconfig -a | grep -o 'inet6\? \(addr:\)\?\s\?\(\(\([0-9]\+\.\)\{3\}[0-9]\+\)\|[a-fA-F0-9:]\+\)' | awk '{ sub(/inet6? (addr:)? ?/, \"\"); print }'"

# Flush Directory Service cache
alias flush="dscacheutil -flushcache && killall -HUP mDNSResponder"

# Clean up LaunchServices to remove duplicates in the “Open With” menu
alias lscleanup="/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user && killall Finder"

# View HTTP traffic
alias sniff="sudo ngrep -d 'en1' -t '^(GET|POST) ' 'tcp and port 80'"
alias httpdump="sudo tcpdump -i en1 -n -s 0 -w - | grep -a -o -E \"Host\: .*|GET \/.*\""

# Canonical hex dump; some systems have this symlinked
command -v hd > /dev/null || alias hd="hexdump -C"

# OS X has no `md5sum`, so use `md5` as a fallback
command -v md5sum > /dev/null || alias md5sum="md5"

# OS X has no `sha1sum`, so use `shasum` as a fallback
command -v sha1sum > /dev/null || alias sha1sum="shasum"

# JavaScriptCore REPL
jscbin="/System/Library/Frameworks/JavaScriptCore.framework/Versions/A/Resources/jsc";
[ -e "${jscbin}" ] && alias jsc="${jscbin}";
unset jscbin;

# Recursively delete `.DS_Store` files
alias cleanup="find . -type f -name '*.DS_Store' -ls -delete"

# Show/hide hidden files in Finder
alias show="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hide="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"

# Hide/show all desktop icons (useful when presenting)
alias hidedesktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias showdesktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"

# URL-encode strings
alias urlencode='python -c "import sys, urllib as ul; print ul.quote_plus(sys.argv[1]);"'

# Merge PDF files
# Usage: `mergepdf -o output.pdf input{1,2,3}.pdf`
alias mergepdf='/System/Library/Automator/Combine\ PDF\ Pages.action/Contents/Resources/join.py'

# Intuitive map function
# For example, to list all directories that contain a certain file:
# find . -name .gitattributes | map dirname
alias map="xargs -n1"

# One of @janmoesen’s ProTip™s
for method in GET HEAD POST PUT DELETE TRACE OPTIONS; do
    alias "$method"="lwp-request -m '$method'"
done

# Kill all the tabs in Chrome to free up memory
# [C] explained: http://www.commandlinefu.com/commands/view/402/exclude-grep-from-your-grepped-output-of-ps-alias-included-in-description
alias chromekill="ps ux | grep '[C]hrome Helper --type=renderer' | grep -v extension-process | tr -s ' ' | cut -d ' ' -f2 | xargs kill"

# Lock the screen (when going AFK)
alias afk="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"

# Reload the shell (i.e. invoke as a login shell)
alias reload="exec $SHELL -l"

#finding the tensorflow dir on work mac
alias tfdir="cd /Users/rus003o/.virtualenvs/cv/lib/python3.6/site-packages/tensorflow/"

export PATH="$HOME/.cargo/bin:$PATH"

export PATH="/usr/local/sbin:$PATH"

source "/Users/rus003o/Documents/vim_stuff/gruvbox_256palette_osx.sh"

export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES
