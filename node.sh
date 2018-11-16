#!/bin/sh

$DOWNLOADL_PATH=$HOME/bin
$NODE_VERSION=10.13.0

clear
	echo "\nDownloading Nodejs into your Downloads Folder!"
	
	mkdir -p $HOME/bin
	curl "https://nodejs.org/dist/v10.13.0/node-v10.13.0.tar.gz" | tar -xf - -C $DOWNLOAD_PATH || exit 1
	cd $DOWNLOAD_PATH/node-v10.13.0
	./configure
	make -j4
	ln -s $DOWNLOAD_PATH/node-v10.13.0/node
	ln -s $DOWNLOAD_PATH/node-v10.13.0/deps/npm/bin/npm-cli.js npm
	source $HOME/.zshrc
				

