.PHONY: all

all: setup tmux_setup stow_packages

setup: stow_install tmux_setup zsh_setup

stow_install:
	bash scripts/install_stow.sh

tmux_setup:
	bash scripts/tmux_setup.sh

zsh_setup:
	bash scripts/zsh_setup.sh

stow_packages:
	stow --target=$(HOME) --restow tmux
	stow --target=$(HOME) --restow zsh
	stow --target=$(HOME) --restow ghostty
	stow --target=$(HOME) --restow nvim
	stow --target=$(HOME) --restow vim
