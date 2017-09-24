## updated Sep 24, 2017
####################Xiangyu####################
todo() {
    if [[ "$*" == "" ]] ; then
        cat ~/.todo
    else
        echo "$*" > ~/.todo
    fi
}

bk() {
    if [ -n "$1" ]
# Test whether wildcard argument is present (non-empty).
    then
        cp "$1"{,~bk} 
    else
        echo "no wildcard argument"
    fi
}

lgr() {
    if [ -n "$1" ]
# Test whether wildcard argument is present (non-empty).
    then
        ls -al | grep "$1"
    else
        echo "no wildcard argument"
    fi
}

#extract() {
#   if [ -f $1 ] ;
#   then
#       case $1 in
#           *.tar.bz2)   tar xvjf $1     ;;
#           *.tar.gz)    tar xvzf $1     ;;
#           *.bz2)       bunzip2 $1     ;;
#           *.rar)       unrar e $1     ;;
#           *.gz)        gunzip $1      ;;
#           *.tar)       tar xvf $1      ;;
#           *.tbz2)      tar xvjf $1     ;;
#           *.tgz)       tar xvzf $1     ;;
#           *.zip)       unzip $1       ;;
#           *.Z)         uncompress $1  ;;
#           *.7z)        7z x $1        ;;
#           *)     echo "'$1' cannot be extracted via extract()" ;;
#       esac
#  else
#       echo "'$1' is not a valid file"
#   fi
#}

topcell() {
calibredrv -a puts \[layout peek $1 -topcells\]; 
}

cells() {
calibredrv -a puts \[layout peek $1 -cells\]; 
}

layers() {
calibredrv -a puts \[layout peek $1 -layers\]; 
}
###Xu###