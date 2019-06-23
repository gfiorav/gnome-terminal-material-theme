.PHONY: all dark light

all:
	git submodule update --init
	bundle install --path ./.gem

dark: all
	bundle exec ruby i2g.rb material-iterm/material-dark.itermcolors

light: all
	bundle exec ruby i2g.rb material-iterm/material.itermcolors
