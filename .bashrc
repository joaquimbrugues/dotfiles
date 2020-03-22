# ~/.bashrc: executed by bash(1) for non-login shells.
# Configuration and aliases for bash

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
#[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases
#alias ll='ls -l'
#alias la='ls -A'
#alias l='ls -CF'
alias aptdate='sudo apt update && apt list --upgradable'
alias dotgit='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# less and man colour variables
# Start blinking
export LESS_TERMCAP_mb=$(tput bold; tput setaf 2) # green
# Start bold
export LESS_TERMCAP_md=$(tput bold; tput setaf 2) # green
# Start stand out
export LESS_TERMCAP_so=$(tput bold; tput setaf 3) # yellow
# End stand out
export LESS_TERMCAP_se=$(tput rmso; tput sgr0)
# Start underline
export LESS_TERMCAP_us=$(tput smul; tput bold; tput setaf 1) # red
# End blinking, bold, standout, underline
export LESS_TERMCAP_me=$(tput sgr0)

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

GPG_TTY=$(tty)
export GPG_TTY

# Nice colored prompt for the TTY with battery updating
function _update_ps1_tty() {
	BAT=$(acpitool -b | cut -d "," -f 2)
	PS1='\e[0;94m[\u\e[m \e[1;92m$BAT \w\e[m\e[0;94m]\e[m\e[0;32m\$\e[m '
}

if [[ $(tty) == *tty* && ! $PROMPT_COMMAND =~ _update_ps1_tty ]]; then
	PROMPT_COMMAND="_update_ps1_tty; $PROMPT_COMMAND"
elif [[ $TERM != linux ]]; then
	PS1='\[\033[01;94m\][\u\[\033[00m\] \[\033[01;92m\]\w\[\033[00m\]\[\033[01;94m\]]\[\033[00m\]\[\033[01;32m\]\$\[\033[00m\] '
fi

source $HOME/.profile
