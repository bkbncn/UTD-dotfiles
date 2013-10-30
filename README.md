UTD-dotfiles
============

Personal UTDallas Unix account settings

	git clone https://github.com/bkbncn/UTD-dotfiles.git ~/.dotfiles
	./dotfiles/dotfiles.sh 

For vim settings, install [Vundle](http://github.com/gmarik/vundle) first

	git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
	vim +:BundleInstall
        
For Cadence settings, go to project folder first

	ln -s ~/.dotfiles/cdsinit .cdsinit
	ln -s ~/.dotfiles/cdsenv .cdsenv
          
