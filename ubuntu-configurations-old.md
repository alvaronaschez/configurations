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

## Some useful links

- [Oryx: The ZSA Keyword Configurator](https://configure.zsa.io/moonlander/layouts/55l6E/latest/0)
- [Library Genesis+](https://libgen.gs/)

## VSCode

- Download and install the `.deb` file from <https://code.visualstudio.com/>
- File > Preferences > Keyboard Shortcuts > View: Toggle Terminal > Ctrl + Escape

## Git

```bash
# update apt-get
sudo apt-get update
# install git
sudo apt-get install git
# configure email
git config --global user.email "alvaro.sanchez@fakemail.com"
```

## ssh

```bash
# generate ssh key
ssh-keygen -t rsa -C "your-email-address"
# print new generated public key
cat ~/.ssh/id_rsa.pub
```

- add the new ssh public key to GitHub, GitLab, Bitbucket, etc

## clone some repos

```bash
mkdir ~/Workspace && cd ~/Workspace
git clone git@github.com:alvaronaschez/wallpapers.git
git clone git@github.com:alvaronaschez/configurations.git
git clone git@github.com:alvaronaschez/books.git
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

## Chrome

- Download the `.deb` file from [the official website](https://www.google.com/chrome/) and install it (with double click)

## Slack

```bash
sudo snap install slack --classic
```

## Pyenv

```bash
# install dependencies
sudo apt-get update; sudo apt-get install make build-essential libssl-dev zlib1g-dev \
libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm \
libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev

# install pyenv
curl https://pyenv.run | bash
```

- Copy the following lines at the end of `.bashrc` and `.zshrc` files:

    ```bash
    # pyenv
    export PYENV_ROOT="$HOME/.pyenv"
    export PATH="$PYENV_ROOT/bin:$PATH"
    eval "$(pyenv init --path)"
    ```

- restart the terminal

- Some useful links:
  - <https://github.com/pyenv/pyenv#installation>
  - <https://github.com/pyenv/pyenv-installer>
  - <https://github.com/pyenv/pyenv/wiki#suggested-build-environment>
  - <https://github.com/pyenv/pyenv/wiki/Common-build-problems>

- Some useful commands:

    ```bash
    # list available python versions
    pyenv install --list
    # install python 3.10.4
    pyenv install 3.10.4
    # list all installed python versions
    pyenv versions
    # set python 3.10.4 as global version
    pyenv global 3.10.4
    ```

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

## Vim

```bash
sudo apt install vim-gtk3
```

## [Helix](https://docs.helix-editor.com/install.html#build-from-source)

## Tmux

```bash
sudo apt-get install tmux
```

## Zsh

```bash
sudo apt-get update && sudo apt-get upgrade
sudo apt-get install zsh
chsh -s $(which zsh)
```

- restart the computer
- Ohmyzsh vs .zshrc ??

## [Rust](https://www.rust-lang.org/tools/install)

```bash
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```

## Pgadmin4

- <https://www.pgadmin.org/download/pgadmin-4-apt/>

```bash
#
# Setup the repository
#

# Install the public key for the repository (if not done previously):
sudo curl https://www.pgadmin.org/static/packages_pgadmin_org.pub | sudo apt-key add

# Create the repository configuration file:
sudo sh -c 'echo "deb https://ftp.postgresql.org/pub/pgadmin/pgadmin4/apt/$(lsb_release -cs) pgadmin4 main" > /etc/apt/sources.list.d/pgadmin4.list && apt update'

#
# Install pgAdmin
#

# Install for both desktop and web modes:
# sudo apt install pgadmin4

# Install for desktop mode only:
sudo apt install pgadmin4-desktop

# Install for web mode only: 
# sudo apt install pgadmin4-web 

# Configure the webserver, if you installed pgadmin4-web:
# sudo /usr/pgadmin4/bin/setup-web.sh
```

## Pylsp

```bash
pip install "python-lsp-server[all]"
```

## [Sdkman](https://sdkman.io/install)

```bash
curl -s "https://get.sdkman.io" | bash
```

## Java

```bash
sdk install java 11.0.15-zulu
```

## Clojure

- (using sdkman)

## [Leiningen](https://leiningen.org/)

```bash
# requires java
sdk install leiningen
```

- usage:

    ```bash
    # open repl
    lein repl
    ```

## [Elixir](https://elixir-lang.org/install.html#gnulinux)

```bash
# Add Erlang Solutions repository:
wget https://packages.erlang-solutions.com/erlang-solutions_2.0_all.deb && sudo dpkg -i erlang-solutions_2.0_all.deb
# update repos
sudo apt-get update
# Install the Erlang/OTP platform and all of its applications:
sudo apt-get install esl-erlang
# Install Elixir:
sudo apt-get install elixir
```

## Postman

```bash
sudo snap install postman
```

## Insomnia

- Download and install the .deb file from <https://insomnia.rest/download>

## Gnome Tweak

```bash
sudo apt install gnome-tweak-tool
```

- Tweaks > General > Suspend when laptop lid is closed > off

## Spotify

```bash
sudo snap install spotify
```

## Telegram

```bash
sudo snap install telegram-desktop
```

## Discord

- Download and install the .deb file from <https://discord.com/download>

## ZSA Moonlander

- <https://configure.zsa.io/moonlander>

- <https://github.com/zsa/wally/wiki/Linux-install>

## Lazy Docker

- <https://github.com/jesseduffield/lazydocker#installation>

```bash
curl https://raw.githubusercontent.com/jesseduffield/lazydocker/master/scripts/install_update_linux.sh | bash
```

## [PHPBrew](https://github.com/phpbrew/phpbrew)

- install [dependencies](https://github.com/phpbrew/phpbrew/wiki/Requirement):
- Ubuntu 22.04

```bash
sudo apt-get install -y \
  build-essential \
  libbz2-dev \
  libreadline-dev \
  libsqlite3-dev \
  libcurl4-gnutls-dev \
  libzip-dev \
  libssl-dev \
  libxml2-dev \
  libxslt-dev \
  php8.1-cli \
  php8.1-bz2 \
  pkg-config
```

- Ubuntu 20.04

```bash
sudo apt-get install -y \
  build-essential \
  libbz2-dev \
  libreadline-dev \
  libsqlite3-dev \
  libcurl4-gnutls-dev \
  libzip-dev \
  libssl-dev \
  libxml2-dev \
  libxslt-dev \
  php7.4-cli \
  php7.4-bz2 \
  pkg-config
```

```bash
curl -L -O https://github.com/phpbrew/phpbrew/releases/latest/download/phpbrew.phar
chmod +x phpbrew.phar
# Move the file to some directory within your $PATH
sudo mv phpbrew.phar /usr/local/bin/phpbrew
```

Init a bash script for your shell environment:

```bash
phpbrew init
```

Add these lines to your `.bashrc` or `.zshrc` file:

```bash
[[ -e ~/.phpbrew/bashrc ]] && source ~/.phpbrew/bashrc
```

## [Go](https://go.dev/doc/install)

- Download the tar file.

- Untar the tar file in `/usr/local`:

```bash
tar -xvf go1.19.linux-amd64.tar.gz

sudo mv go /usr/local
```

- Copy the following lines at the end of `.bashrc` and `.zshrc` files:

```bash
export PATH=$PATH:/usr/local/go/bin
```

- Restart the terminal, to take effect.

- Verify:

```bash
go version
```

## [go repl](https://github.com/x-motemen/gore)

- add this line at the end of your `.zshrc` file:

```bash
export PATH="$PATH:$HOME/go/bin"
```

- install `gore` repl:

```bash
go install github.com/x-motemen/gore/cmd/gore@latest
```

## [ASDF](https://asdf-vm.com/)

asdf Manage multiple runtime versions with a single CLI tool

## [DBeaver](https://dbeaver.io/)

Free multi-platform database tool
