#
# ~/.bashrc
#

#if not running interactivly, don't do anything
[[ $- != *i* ]] && return

#Adding alias
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias c='clear'
alias le='ls -la'
alias lss='ls -a'
alias h='cd home'
alias find='find -type f'

#Adding function
function mygrep{
    grep -i $1 $2 
}

#Modifie PS1
PS1='[\u@\h \W]\$ ' 