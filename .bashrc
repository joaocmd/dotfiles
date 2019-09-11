#
# ~/.bashrc
#
set -o vi

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
    exec startx &> /dev/null;
fi

alias ls='ls --color=auto'
alias ll='ls -la --color=auto'
PS1='\u@\h \W: '
complete -cf sudo
complete -cf man

export JAVA_HOME="$HOME/jdk1.8.0_211"
export M2_HOME="/usr/bin/"
export CVSROOT=":ext:ist189471@sigma.ist.utl.pt:/afs/ist.utl.pt/groups/leic-po/po18/cvs/061"
export PATH="$PATH:.local/bin/"
export CVS_RSH="ssh"
