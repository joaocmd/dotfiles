#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
    exec startx &> /dev/null;
fi

alias ls='ls --color=auto'
PS1='\u@\h \W: '
complete -cf sudo
complete -cf man

export CVSROOT=":ext:ist189471@sigma.ist.utl.pt:/afs/ist.utl.pt/groups/leic-po/po18/cvs/061"
export CVS_RSH="ssh"
