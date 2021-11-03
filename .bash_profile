#To be executed by bash on initialization

export GPG_TTY=$(tty)
if [[ -n "$SSH_CONNECTION" ]] ;then
    export PINENTRY_USER_DATA="USE_CURSES=1"
fi

[[ -r ~/.bashrc ]] && . ~/.bashrc
