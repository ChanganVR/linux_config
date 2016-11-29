alias sl='ls'
alias l='ls'
alias ll='ls -lhA'
alias python='python3'
alias py='python3'
alias cd..="cd .."
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias c='claer'
alias mkdir='mkdir -pv'
alias ports='netstat -tulanp'

# define colors
red='\[\e[0;31m\]'
RED='\[\e[1;31m\]'
green='\[\e[0;32m\]'
GREEN='\[\e[1;32m\]'
yellow='\[\e[0;33m\]'
YELLOW='\[\e[1;33m\]'
blue='\[\e[0;34m\]'
BLUE='\[\e[1;34m\]'
pink='\[\e[0;35m\]'
PINK='\[\e[1;35m\]'
cyan='\[\e[0;36m\]'
CYAN='\[\e[1;36m\]'
light='\[\e[0;37m\]'
LIGHT='\[\e[1;37m\]'
black='\[\e[0;38m\]'
BLACK='\[\e[1;38m\]'
NC='\[\e[0m\]'
 
# prompt
error="\$(if [[ \$? == 0 ]]; then echo \"\[\033[0;32m\][\$?\342\234\223]\"; else echo \"\[\033[0;31m\][\$?\342\234\227]\"; fi)\[\033[00m\]"
PS1="${error}${yellow}[\t] ${CYAN}\u${NC}@${PINK}\h:${BLUE}\w\n${RED}\$ ${NC}"

# extract archives
extract () {
   if [ -f $1 ] ; then
       case $1 in
           *.tar.bz2)   tar xvjf $1    ;;
           *.tar.gz)    tar xvzf $1    ;;
           *.bz2)       bunzip2 $1     ;;
           *.rar)       unrar x $1       ;;
           *.gz)        gunzip $1      ;;
           *.tar)       tar xvf $1     ;;
           *.tbz2)      tar xvjf $1    ;;
           *.tgz)       tar xvzf $1    ;;
           *.zip)       unzip $1       ;;
           *.Z)         uncompress $1  ;;
           *.7z)        7z x $1        ;;
           *)           echo "don't know how to extract '$1'..." ;;
       esac
   else
       echo "'$1' is not a valid file!"
   fi
 }

