##updated at May 25, 2018
###############Xiangyu#################### 
# about system # 
alias grep='grep --color=auto'
alias v='$NDLHOME/vim/bin/vim'
alias g='git' 
alias n='nedit' 
alias st='~/sublime_text/sublime_text' 

alias cd-='cd -'
alias cd..='cd ..'
alias ..='cd ..'
alias cd.2='cd ../..'
alias ...='cd ../..'
alias .2='cd ../..'

alias brewup='brew update; brew upgrade; brew cleanup'

alias ndlhome='cd /proj/ndl/home/xxx110230'

alias webup='cd $NDLHOME/vlsi;git pullup; mkdocs build; yes| cp -R $NDLHOME/vlsi/site/* ~/public_html/; yes| ~/fixmywebsite; cd -'

alias dush='du -sh'
alias dusk='du -sk * | sort -nr'

# Customize listing format #
alias la='ls -aFhl'
alias ll='ls -AFhl'
alias llm='ll | more'
alias ls.='ls -d .*' 
alias lsd='ls -lh | grep "^d"'	
alias lsdm='ls -lh | grep "^d" | more' 
alias lsf='ls -lh | grep -v "^d"'
alias lsfm='ls -lh | grep -v "^d"| more'
alias lld='ls -alh | grep "^d" | egrep -v " \.+$"'	
alias lldm='ls -alh | grep "^d" | egrep -v " \.+$" | more' 
alias llf='ls -alh | grep -v "^d"'
alias llfm='ls -alh | grep -v "^d"|more'

# about source #
alias sfic5=".  /proj/cad/startup/profile.ic-5"
alias sfic6=".  /proj/cad/startup/profile.ee7325"
alias sfsyn=".  /proj/cad/startup/profile.synopsys_2016"

alias cadlk="clsAdminTool -are ."
alias cadlock=".  /proj/cad/startup/profile.ic-5; clsAdminTool -are ."

# about application #
alias pygf65='cd ~/PyLayout/scripts&& . ../technology/gf65/PyLayout.sh'
alias rungf65='cd $NDLHOME/cad/gf65/&& . /proj/cad/startup/profile.ee7325;virtuoso&'
alias runic5='cd $HOME/cad/cadence/&& . /proj/cad/startup/profile.ic-5;icfb&'
alias runit='cd $NDLHOME/training/ADE_5141/&& . /proj/cad/startup/profile.ic-5;icms&'
alias rundv='cd $HOME/cad/synopsys/&& . /proj/cad/startup/profile.synopsys_2016;design_vision&'
alias dv="design_vision&"
alias dvuser='/proj/cad/synopsys/synopsys_lmgrd_linux_scl-11.12/linux64/bin/lmstat -f Design-Vision | grep -P "\s{4}\w{3}\d{6}"'
alias dvkill='pkill -u `id | cut -c 5-10` -f design_vision'
alias runhspice='cd $HOME/cad/synopsys/&& . /proj/cad/startup/profile.synopsys_2016;hspice&'
alias runwv='cd $HOME/cad/synopsys/&& . /proj/cad/startup/profile.synopsys_2016;wv&'
alias runpc='cd $HOME/PyCell/quickstart; source ./bashrc; pyros&'
####################Xu####################

