#
# ~/.bashrc
#

#if not running interactivly, don't do anything
[[ $- != *i* ]] && return

#echo user 
echo -e "Bienvenue $USER \n"  

#Adding alias
source ~/.aliases

#Adding function
source ~/.functions


#Modifie PS1
export PS1="[\A \u @ \w] \[\e[32m\] $ \[\e[m\]" 

#Set new $PATH
export PATH="$HOME/bin:$PATH"
