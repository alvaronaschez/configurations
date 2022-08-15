all: compare-zshrc save-zshrc code-list-extensions code-save-extensions code-install-extensions
.PHONY: all

compare-zshrc:
	diff .zshrc ~/.zshrc

save-zshrc:
	cp ~/.zshrc .zshrc

code-list-extensions:
	code --list-extensions

code-save-extensions:
	code --list-extensions > ./vs-code-extensions.txt

code-install-extensions:
	cat ./vs-code-extensions.txt | xargs -L 1 code --install-extension
