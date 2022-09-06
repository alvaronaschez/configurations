# UBUNTU CONFIGURATIONS

## Install these first:

The very basics

```bash
sudo apt update
sudo apt install git
sudo apt install curl
sudo apt install make
sudo apt install zsh
sudo apt install tmux
sudo apt install vim-gtk3
```

Configure them:

```bash 
git config --global user.email "alvaro.sanchez@fakemail.com"
chsh -s $(which zsh)
```

## ssh

```bash
# generate ssh key
ssh-keygen -t rsa -C "your-email-address"
# print new generated public key
cat ~/.ssh/id_rsa.pub
```
- add the new ssh public key to GitHub, GitLab, Bitbucket, etc

## Install these with Snap
```bash
sudo snap install slack --classic
sudo snap install spotify
sudo snap install telegram-desktop
```

## Install these by downloading the .deb file

- [Google Chrome](https://www.google.com/chrome/)
- [VSCode](https://code.visualstudio.com/)
- [DBeaver](https://dbeaver.io/)
- [Insomnia](https://insomnia.rest/download)
- [Discord](https://discord.com/download)

Configure them:
- VSCode > File > Preferences > Keyboard Shortcuts > View: Toggle Terminal > Ctrl + Escape


## clone some repos

```bash
mkdir ~/Workspace && cd ~/Workspace
git clone git@github.com:alvaronaschez/wallpapers.git
git clone git@github.com:alvaronaschez/configurations.git
git clone git@github.com:alvaronaschez/books.git
```

## [asdf](https://asdf-vm.com/)

asdf Manage multiple runtime versions with a single CLI tool

- Install it by following [the instructions](https://asdf-vm.com/guide/getting-started.html):
- Download asdf:
```bash
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.10.2
```
- Add the following to ~/.zshrc:
```sh
## asdf
. $HOME/.asdf/asdf.sh
# append completions to fpath
fpath=(${ASDF_DIR}/completions $fpath)
# initialise completions with ZSH's compinit
autoload -Uz compinit && compinit
```
- Change ownership of .asdf folder
```sh
sudo chown alvaro ~/.asdf
sudo chgrp alvaro ~/.asdf
```
- Add some dependencies needed in order to install Python:
```sh
sudo apt-get update; sudo apt-get install make build-essential libssl-dev zlib1g-dev \
libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm \
libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev
```
- Add some dependencies needed in order to install PHP:
```
sudo apt install autoconf bison re2c libcurl4-gnutls-dev libgd-dev libonig-dev \
postgresql libpq-dev
```

```sh
apt-get update && apt-get install -y autoconf bison build-essential curl gettext git libgd-dev libcurl4-openssl-dev libedit-dev libicu-dev libjpeg-dev libmysqlclient-dev libonig-dev libpng-dev libpq-dev libreadline-dev libsqlite3-dev libssl-dev libxml2-dev libzip-dev openssl pkg-config re2c zlib1g-dev
```

- Then install plugins and versions:
```sh
asdf plugin list all

asdf plugin add python
asdf plugin add poetry
asdf plugin add php
asdf plugin add java
asdf plugin add leiningen

asdf list all python
asdf list all poetry
asdf list all php
asdf list all java
asdf list all leiningen

asdf install python 3.10.6
asdf install python 3.9.13
asdf install poetry latest
asdf install php 
asdf install java zulu-18.32.13
asdf install leiningen 2.9.9

asdf add nodejs
asdf install nodejs latest
asdf global nodejs latest
asdf local nodejs latest

asdf plugin list
```

## [Docker](https://docs.docker.com/engine/install/ubuntu/)

```bash
# Set up the repository
# Update the apt package index
sudo apt-get update

# install packages to allow apt to use a repository over HTTPS
sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

# Add Docker’s official GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

# Use the following command to set up the stable repository
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Install Docker Engine
sudo apt-get update

sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin

# Verify that Docker Engine is installed correctly by running the hello-world image.
sudo docker run hello-world

# Manage Docker as a non-root user:
sudo usermod -aG docker $USER

newgrp docker

# restart session

# Verify that Docker Engine is working without root access
docker run hello-world
```

## Lazy Docker

- <https://github.com/jesseduffield/lazydocker#installation>

```bash
curl https://raw.githubusercontent.com/jesseduffield/lazydocker/master/scripts/install_update_linux.sh | bash
```

## Some useful links

- [Library Genesis+](https://libgen.gs/)

## Gnome Tweak

```bash
sudo apt install gnome-tweak-tool
```

- Tweaks > General > Suspend when laptop lid is closed > off

## [Poetry](https://python-poetry.org/docs/master/#installing-with-the-official-installer)

```bash
curl -sSL https://install.python-poetry.org | python3 -
```

- copy the following lines in `.bashrc` and `.zshrc`:

    ```bash
    # poetry
    export PATH="/home/alvaro/.local/bin:$PATH"
    ```

- Note: we suggest to configure Poetry to use in-project environments running:

    ```bash
    poetry config virtualenvs.in-project true
    ```

## Pylsp

```bash
pip install "python-lsp-server[all]"
```