UTD-dotfiles
============

Personal UTDallas Unix account settings

	git clone https://github.com/bkbncn/UTD-dotfiles.git ~/.dotfiles
	./.dotfiles/dotfiles.sh 

For vim settings, install [Vundle](http://github.com/VundleVim/Vundle.vim) 

	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
	vim +PluginInstall +qall
        
For Cadence settings, go to project folder first

	ln -s ~/.dotfiles/cdsinit .cdsinit
	ln -s ~/.dotfiles/cdsenv .cdsenv
	ln -s ~/.dotfiles/leBindKeys.il leBindKeys.il
	ln -s ~/.dotfiles/schBindKeys.il schBindKeys.il      
