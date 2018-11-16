#!/bin/sh

clear
	echo "\nDownloading Nodejs into your Downloads Folder!"
	
	curl "https://nodejs.org/dist/v10.13.0/node-v10.13.0.tar.gz" | tar -xf - -C /goinfre/$USER/Downloads || exit 1
	cd /goinfre/$USER/Downloads/node-v10.13.0
	./configure
	make -j4
	echo "" >> ~/.zshrc
	echo "# Setup Node " >> ~/.zshrc
	echo "export PATH=$HOME/bin:"$PWD:$PWD/out/bin:$PWD/deps/npm/bin:$PATH >> ~/.zshrc
	echo "alias npm='npm-cli.js'" >> ~/.zshrc
	source ~/.zshrc
				

