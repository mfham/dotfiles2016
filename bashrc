# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions

PATH=$PATH:/usr/local/bin:$HOME/.composer/vendor/bin

#alias e=/usr/bin/emacs
alias e=/home/mfham/local/bin/emacs
alias rm='rm -i'
export TERM="xterm-256color"

alias rspec="rspec -cfd"
alias ll='ls -l'
alias la='ls -a'
alias r='ruby'

# history
function share_history {
    history -a
    history -c
    history -r
}
PROMPT_COMMAND='share_history'
shopt -u histappend

export HISTSIZE=99999
export HISTIGNORE=fg*:bg*:history*:cd*
export HISTCONTROL=ignoredups

#source $HOME/perl5/perlbrew/etc/bashrc
#export PHPBREW_SET_PROMPT=1
#source ~/.phpbrew/bashr

