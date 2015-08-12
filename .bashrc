#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus
export WORKON_HOME=~/.virtualenvs
source /usr/bin/virtualenvwrapper.sh

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/Projects/bin" ] ; then
    PATH="$HOME/Projects/bin:$PATH"
fi

export USE_CCACHE=1

complete -cf sudo

export EDITOR=vim
export VISUAL=vim

# jrnl made a little bit more private
HISTIGNORE="jrnl *"

# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/base16-default.dark.sh"
[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL

# Browser for rtv, command line reddit
export BROWSER=firefox
