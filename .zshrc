
#homebrew
PATH="/usr/local/bin:$PATH"

alias sv='source ~/venv/bin/activate'

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

#export GREP_OPTIONS='--color=auto'
unset GREP_OPTIONS

function get_git() {
    git branch 2> /dev/null | sed -n -e 's/^\* \(.*\)/[\1] /p'
}
setopt PROMPT_SUBST
export PROMPT='%f%F{214}%2~%f %F{202}$(get_git)%f| '

#To avoid them accidentally linking against a Pyenv-provided Python
alias brew='env PATH="${PATH//$(pyenv root)\/shims:/}" brew'

alias text='osascript textmessage.applescript';

alias tar='tar -cvf';
alias untar='tar -xvf';

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

alias pwd="pwd -P"
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

# Merge PDF files
# Usage: `mergepdf -o output.pdf input{1,2,3}.pdf`
alias mergepdf='/System/Library/Automator/Combine\ PDF\ Pages.action/Contents/Resources/join.py'

# replace " " in filenames to _
alias renamespace="for file in *; do mv "$file" `echo $file | tr ' ' '_'` ; done"

export PATH="/usr/local/sbin:$PATH"

export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES
eval "$(/opt/homebrew/bin/brew shellenv)"
. "$HOME/.cargo/env"
export PATH="/opt/homebrew/opt/openjdk@17/bin:$PATH"

## pyenv setup according to: https://github.com/pyenv/pyenv#homebrew-in-macos
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
