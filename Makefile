.PHONY: all dark light

all:
	bundle install --path ./.gem

dark: all
	bundle exec ruby i2g.rb material-iterm/material-dark.itermcolors

light: all
	bundle exec ruby i2g.rb material-iterm/material.itermcolors
