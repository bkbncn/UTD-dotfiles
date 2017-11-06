##updated at Oct 17, 2017
###############Xiangyu#################### 

## about system ##
alias v='$NDLHOME/vim/bin/vim'
alias st='$HOME/sublime_text/sublime_text'
alias n='nedit' 
alias mv='mv -i'
alias rm='rm -I'
alias ssh='ssh -Y'
alias grep='grep --color=auto'

alias cd-='cd -'
alias cd..='cd ..'

alias brewup='bubu; upgrade_oh_my_zsh; pyenv update'
alias pipup='pip list -ol --format=freeze | grep -v "^(\-e|#)" | cut -d = -f 1 | xargs -n1 pip install -U'

alias ndlhome='cd /proj/ndl/home/xxx110230'

alias webup='cd $NDLHOME/vlsi;git pullup; mkdocs build; yes| cp -R $NDLHOME/vlsi/site/* ~/public_html/; yes| ~/fixmywebsite; cd -'

alias dush='du -sh'
alias dusk='du -sk * .??* | sort -nr'

# Customize listing format #
alias la='ls -AFhl'
alias ll='ls -aFhl'
alias lt='ls -Flht'   #sorted by date
alias lr='ls -FhlR'   #recursive
alias lsdot='ls -ld .*'
alias lsd='ls -lh | grep "^d"'
alias lsf='ls -lh | grep -v "^d"'
alias lld='ls -alh | grep "^d" | egrep -v " \.+$"'
alias llf='ls -alh | grep -v "^d"'

alias fd='find . -type d -name'
alias ff='find . -type f -name'

#'nautilus .' open in finder
alias open='nautilus'

# 'gnome-terminal --tab' open a new tab, ctrl+shift+t
alias tab='gnome-terminal --tab'

# Common alias
alias dush='du -sh'
alias dusk='du -sk * .??* | sort -nr'
alias h='history'
alias hgrep="fc -El 0 | grep"
alias p='ps -f'
alias grep='grep --color'
alias sgrep='grep -R -n -H -C 5 --exclude-dir={.git,.svn,CVS}'

## suffix aliases
#
alias -s txt='vim'
alias -s zip='unzip -l'
alias -s rar="unrar l"
alias -s tgz='tar -xzvf'
alias -s tar="tar tf"
alias -s gz='tar -xzvf'
alias -s bz2='tar -xjvf'

## Command line head / tail shortcuts
alias -g CA="2>&1 | cat -A"
alias -g G='| grep'
alias -g EG='|& egrep'
alias -g H='| head'
alias -g HL='|& head -20'
alias -g T='| tail'
alias -g TL='| tail -20'
alias -g L='| less'
alias -g LL="2>&1 | less"
alias -g LS='| less -S'
alias -g MM='| most'
alias -g M='| more'
alias -g NE="2> /dev/null"
alias -g NUL="> /dev/null 2>&1"
alias -g PIPE='|'
alias -g S='| sort'
alias -g NS='| sort -n'
alias -g US='| sort -u'
alias -g RNS='| sort -nr'
alias -g X='| xargs'

alias -g X0G='| xargs -0 egrep'
alias -g X0='| xargs -0'
alias -g XG='| xargs egrep'

# about source #
alias sfic5=".  /proj/cad/startup/profile.ic-5"
alias sfic6=".  /proj/cad/startup/profile.ee7325"
alias sfsyn=".  /proj/cad/startup/profile.synopsys_2016"

alias cadlk="clsAdminTool -are ."
alias cadlock=".  /proj/cad/startup/profile.ic-5; clsAdminTool -are ."

alias gdsrd="calibredrv -m"
alias gdsread=".  /proj/cad/startup/profile.mentor_gf65; calibredrv -m"

# about application #
alias pygf65='cd ~/PyLayout/scripts&& . ../technology/gf65/PyLayout.sh'
alias rungf65='cd $NDLHOME/cad/gf65/&& . /proj/cad/startup/profile.ee7325;virtuoso&'
alias rungf55='cd $NDLHOME/cad/gf55/&& . /proj/cad/startup/profile.ic-6.16; . /proj/cad/startup/profile.mentor_2013; export TECHDIR=/proj/cad/library/mosis/GF55_LPe/cmos10lpe_CDS_oa_dl064_12_20160805/Calibre; export BEOL_STACK=6_00_02_00_LB; export IOTYPE=INLINE; export DESIGN_TYPE=CELL; virtuoso&'
alias runic5='cd $HOME/cad/cadence/&& . /proj/cad/startup/profile.ic-5;icfb&'
alias runit='cd $NDLHOME/training/ADE_5141/&& . /proj/cad/startup/profile.ic-5;icms&'
alias rundv='cd $HOME/cad/synopsys/&& . /proj/cad/startup/profile.synopsys_2016;design_vision&'
alias dv="design_vision&"
alias dvuser='/proj/cad/synopsys/synopsys_lmgrd_linux_scl-11.12/linux64/bin/lmstat -f Design-Vision | grep -P "\s{4}\w{3}\d{6}"'
alias dvkill='pkill -u `id | cut -c 5-10` -f design_vision'
alias runhspice='cd $HOME/cad/spice/&& . /proj/cad/startup/profile.synopsys_2016;hspice&'
alias runwv='cd $HOME/cad/spice/&& . /proj/cad/startup/profile.synopsys_2016;wv&'
alias runpc='cd $HOME/PyCell/quickstart&& source ./bashrc; pyros&'
####################Xu####################

