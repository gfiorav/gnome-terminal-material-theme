.PHONY: all dark light install clean

all:
	git submodule update --init
	bundle install --path ./.gem
	mkdir -p build/src

dark: all
	cp material-iterm/material-dark.itermcolors build/src/theme.itermcolors

light: all
	cp material-iterm/material.itermcolors build/src/theme.itermcolors

install:
	bundle exec ruby ./i2g.rb ./build/src/theme.itermcolors > ./build/install.sh
	chmod +x ./build/install.sh
	./build/install.sh

clean:
	rm -rf ./.gem build
