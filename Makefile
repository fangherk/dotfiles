.DEFAULT_GOAL := help

### help - Help docs for this Makefile
.PHONY: help
help :
	@sed -n '/^###/p' Makefile

### move_to_machine - Move files from these dotfiles to machine
move_to_machine: vim/.vimrc zsh/.zshrc emacs/.spacemacs
	sh setup.sh

### copy_from_machine - Move files from machine to dotfiles
copy_from_machine:
	cp -i ~/.vimrc vim/.vimrc
	cp -i ~/.spacemacs emacs/.spacemacs
	cp -i ~/.zshrc zsh/.zshrc
