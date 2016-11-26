alias ll='ls -alF'
alias python='python3'
alias py='python3'

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

