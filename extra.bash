#updated at April 11 2016
####################Xiangyu####################

# NDLHOME=/proj/ndl/home/xxx110230
# CDS_INST_DIR=$CDS=$CDSHOME=$CDSROOT 
 
# cadence lockfile # 
# clsAdminTool -are .
# to release all edit locks file by cadence in the current folder
# clsAdminTool -asre /path/to/the/locked/file
alias clcds='clsAdminTool -asre $HOME'
# to release all edit lock on a specific file 
# or run clsAdminTool to do other cadence lockfile related job
# find . -name "*.cdslck" -exec rm -f {}
# this command will remove all the cadence lockfile, but be cautious

# misc #
#'nautilus .' open in finder
alias open='nautilus'
#'ps2pdf' can convert .pf file to .pdf file
#'soffice' - LibreOffice suites
#'evince' - view .pdf, perferred
####################Xu####################

