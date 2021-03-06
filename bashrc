# Xiangyu updated at June 1, 2018
# $Id: .bashrc,v 1.2 1998/05/02 21:42:35 amos Exp $
# Individual per-interactive-shell startup file

export HOST=`uname -n`

umask 066
ulimit -c 0		# Don't generate a core file


# Set up a path if PS1 is not set (this implies a non-interactive shell)
if [ -z "$PS1" ] ; then
  PATH=/usr/local/bin:/sbin:/usr/sbin:/usr/bin:/usr/ccs/bin:/usr/local/openwin/bin:/usr/openwin/bin
  MANPATH=/usr/local/man:/usr/man:/usr/share/man

else
# From here down is for interactive shells

# This prints the hostname and current path on a window title
if [ x$DISPLAY != x ] ; then
  PROMPT_COMMAND='echo -n "]2;$HOST:$PWD"'
fi

if [ x$TERMINAL_EMULATOR != x ] ; then
  export TERM=$TERMINAL_EMULATOR
elif [ -f /usr/local/bin/qterm ] ; then
  echo Querying terminal...
  if [ -f ~/.qtermtab ] ; then
    export TERM=`/usr/local/bin/qterm +real +usrtab`
  else
    export TERM=`/usr/local/bin/qterm +real +systab`
  fi
fi

set +a

# settings for interactive shells
# To turn off the following settings comment it
  export HISTCONTROL=ignoredups  # Ignore duplicate commands
  export HISTFILESIZE=40         # Remember the last 40 commands
  export HISTSIZE=40
# set ignoreeof         # Prevents usage of Control-D from logging out
  set noclobber         # Prevents '>' from overwriting files
# set noglob            # Prevents wildcard expansion from taking place
  unset noglob
  set notify            # Informs you when a background job terminates


# Aliases
# Some so-I-won't-bash-my-head-into-the-wall-because-I-deleted-a-file commands
alias   ls='ls --color=auto'
alias   cp='cp -i'
alias   mv='mv -i'
alias   rm='rm -I'
alias   ssh="ssh -Y"

# Some prompts
PS1='{\h:\w} '

# cd path - allows you to change directories without specifying a whole
# directory path
CDPATH=:..:~:~/bin

cd

fi 	# Finish processing interactive shell functions

# $Source: /warez/home/skel/src/RCS/.bashrc,v $

####################Xiangyu####################

export PATH=$PATH:/bin
export NDLHOME=/proj/ndl/home/xxx110230

export PATH="/proj/ndl/home/xxx110230/linuxbrew/bin:/proj/ndl/home/xxx110230/linuxbrew/sbin:$PATH"
export MANPATH="/proj/ndl/home/xxx110230/linuxbrew/share/man:$MANPATH"
export INFOPATH="/proj/ndl/home/xxx110230/linuxbrew/share/info:$INFOPATH"
[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh

# load other settings #

for file in $HOME/.dotfiles/{aliases,extra,functions}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file"
done
unset file

alias brewup='brew update; brew upgrade; brew cleanup'
####################Xu####################
