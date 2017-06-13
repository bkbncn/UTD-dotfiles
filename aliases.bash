##updated at June 13, 2017
###############Xiangyu#################### 
# about system # 
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
export NDLHOME=/proj/ndl/home/xxx110230

# Customize listing format #
alias la='ls -a'
alias ll='ls -aFlh'
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
alias sfic5=".  $HOME/.dotfiles/profile.ic-5"
alias sfic5ta=".  /proj/cad/startup/profile.ic-5"
alias sfsyn=".  /proj/cad/startup/profile.synopsys_2016"

alias cadlk="clsAdminTool -are ."
alias cadlock=".  /proj/cad/startup/profile.ic-5; clsAdminTool -are ."

# about application #
alias rungf65='cd $HOME/cad/gf65/&& . /proj/cad/startup/profile.ee7325;virtuoso&'
alias runic='cd $NDLHOME/cad/cadence/&& . $HOME/.dotfiles/profile.ic-5;icfb&'
alias runic5ta='cd $HOME/cad/cadence/&& . $HOME/.dotfiles/profile.ic-5;icfb&'
alias runit='cd $HOME/training/ADE_5141/&& . $HOME/.dotfiles/profile.ic-5;icms&'
alias rundv='cd $NDLHOME/cad/synopsys/&& . /proj/cad/startup/profile.synopsys_2016;design_vision&'
alias dv="design_vision&"
alias dvuser='/proj/cad/synopsys/synopsys_lm_linux_scl-11.12/linux64/bin/lmstat -f Design-Vision -c /home/cad/flexlm/synopsys.lic | grep -P "\s{4}\w{3}\d{6}"'
alias dvkill='pkill -u `id | cut -c 5-10` -f design_vision'
alias runhspice='cd $NDLHOME/cad/synopsys/&& . /proj/cad/startup/profile.synopsys_2016;hspice&'
alias runwv='cd $NDLHOME/cad/synopsys/&& . /proj/cad/startup/profile.synopsys_2016;wv&'
alias runpc='cd $HOME/PyCell/quickstart; source ./bashrc; pyros&'
####################Xu####################

