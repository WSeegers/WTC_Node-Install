#!/bin/sh

clear
	echo "\n${CYAN}Downloading Nodejs into your Downloads Folder!${WHITE}"
	
				curl "https://nodejs.org/dist/v10.13.0/node-v10.13.0.tar.gz" | tar -xf - -C /goinfre/$USER/Downloads || exit 1
				cd /goinfre/$USER/Downloads/node-v10.12.0
				./configure
				make -j4
				echo "export PATH=$HOME/bin:"$PWD:$PWD/out/bin:$PWD/deps/npm/bin:$PATH >> ~/.zshrc
				echo "alias npm='npm-cli.js'" >> ~/.zshrc
				source ~/.zshrc
				echo "Please open a new terminal"
				break;;
				

