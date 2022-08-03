code-list-extensions:
	code --list-extensions

code-save-extensions:
	code --list-extensions > ./vs-code-extensions.txt

code-install-extensions:
	cat ./vs-code-extensions.txt | xargs -L 1 code --install-extension
