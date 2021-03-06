#!/bin/bash

# Load RVM, if you are using it
[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm

# Add rvm gems and nginx to the path
export PATH=$PATH:~/.gem/ruby/1.8/bin:/opt/nginx/sbin

# Path to the bash it configuration
export BASH=$HOME/.bash_it

# Lock and Load a custom theme file
# location /.bash_it/themes/
export BASH_THEME='bobby'

# Your place for hosting Git repos. I use this for private repos.
export GIT_HOSTING='git@git.domain.com'

# Set my editor and git editor
#export EDITOR="/usr/bin/mate -w"
#export GIT_EDITOR='/usr/bin/mate -w'

# Set the path nginx
export NGINX_PATH='/opt/nginx'

# Don't check mail when opening terminal.
unset MAILCHECK

# Change this to the path of your local jekyll root to use the jekyll aliases

export JEKYLL_LOCAL_ROOT="$HOME/Sites/jekyllsite"

# And change this to the remote server and root

export JEKYLL_REMOTE_ROOT="user@server:/path/to/jekyll/root"

# And, for the last of the jekyll variables, this is the formatting you use, eg: markdown,
# textile, etc. Basically whatever you use as the extension for posts, without the preceding dot

export JEKYLL_FORMATTING="markdown"

# Change this to your console based IRC client of choice.

export IRC_CLIENT='irssi'

# Set this to the command you use for todo.txt-cli

export TODO="t"

# Set store directory for handmade commandline history tool 
export hchtstoredir="$HOME/.hcht"

# Set vcprompt executable path for scm advance info in prompt (demula theme)
# https://github.com/xvzf/vcprompt
#export VCPROMPT_EXECUTABLE=~/.vcprompt/bin/vcprompt

# Load Bash It
source $BASH/bash_it.sh

alias rnd='VVERBOSE=1 QUEUE=* rake environment resque:work'
alias caps='bundle exec cap staging deploy:migrations'
alias capp='bundle exec cap production deploy:migrations'
alias b="cd ~/Projects/billetto"
alias bc="bundle exec cucumber --drb -r features/"
alias t='python ~/Resources/t/t.py --task-dir ~/tasks --list tasks'

# MacPorts Installer addition on 2011-01-11_at_10:25:29: adding an appropriate $
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

export RUBY_GC_MALLOC_LIMIT=80000000 
export RUBY_HEAP_MIN_SLOTS=200000 
export RUBY_HEAP_SLOTS_GROWTH_FACTOR=1 
export RUBY_HEAP_SLOTS_INCREMENT=1 
export RUBY_HEAP_FREE_MIN=100000
