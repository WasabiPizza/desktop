# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#PS1='[\u@\h \W]\$ '
PS1="\W > \[$(tput sgr0)\]"
#PS1="ようこそ "

shopt -s autocd

alias \
        vpi='sudo xbps-install' \
        vpr='sudo xbps-remove -R' \
        vpu='sudo xbps-install -Su' \
        vpq='xbps-query -Rs' \
        vpc='sudo xbps-remove -Oo' \
        vpk='sudo vkpurge rm all'

alias \
        ls='ls -hN --color=auto --group-directories-first' \
        cp='cp -iv' \
	mv='mv -iv' \
	rm='rm -vI' \
	mkdir='mkdir -pv' 

alias q='exit'
#alias vim='TERM=xterm-256color vim'
alias n='nnn -xeC'
alias bashrc='vim ~/.bashrc && source ~/.bashrc'
alias mini='TERM=xterm-256color ssh mini'
alias server='TERM=xterm-256color ssh server'

export PATH=$PATH:$HOME/.local/bin
export XBPS_DISTDIR=/home/nero/Git/void-packages/
export SSH_AUTH_SOCK=$HOME/.ssh/ssh-agent.sock

export EDITOR='vim'
export TERMINAL='foot'

export XDG_CURRENT_DESKTOP=sway
export XDG_SESSION_TYPE=wayland
export QT_QPA_PLATFORMTHEME=qt5ct
export QT_QPA_PLATFORM=wayland-egl
export MOZ_ENABLE_WAYLAND=1
export ANKI_WAYLAND=1

export NNN_TRASH=1
#export NNN_RCLONE=''
#export NNN_BMS='m:/home/nero/stuff/Music/;t:/home/nero/stuff/Torrents/'

export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx

export LESS=-R
export LESS_TERMCAP_mb=$'\E[1;31m'     # begin blink
export LESS_TERMCAP_md=$'\E[1;36m'     # begin bold
export LESS_TERMCAP_me=$'\E[0m'        # reset bold/blink
export LESS_TERMCAP_so=$'\E[01;44;33m' # begin reverse video
export LESS_TERMCAP_se=$'\E[0m'        # reset reverse video
export LESS_TERMCAP_us=$'\E[1;32m'     # begin underline
export LESS_TERMCAP_ue=$'\E[0m'        # reset underline
