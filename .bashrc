#
# ~/.bashrc
#

#if not running interactivly, don't do anything
[[ $- != *i* ]] && return

#echo user 
echo -e "Bienvenue $USER \n"  

#Adding alias
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias c='clear'
alias le='ls -la'
alias lss='ls -a'
alias h='cd ~'
alias findf='find -type f'
alias vpn='openvpn '
alias gp='git push origin'
alias gc='git commit'

#Adding function
function mygrep(){
    grep -i $1 $2; 
}

function mkto(){
	mkdir $1 && cd $_
}


#Modifie PS1
export PS1="[\A \u @ \w] \[\e[32m\] $ \[\e[m\]" 
