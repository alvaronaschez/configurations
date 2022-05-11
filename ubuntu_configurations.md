# UBUNTU CONFIGURATIONS

## VSCode

- Download and install the `.deb` file from https://code.visualstudio.com/
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

## Docker

- Follow the instructions in https://docs.docker.com/engine/install/ubuntu/

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
    - https://github.com/pyenv/pyenv#installation
    - https://github.com/pyenv/pyenv-installer
    - https://github.com/pyenv/pyenv/wiki#suggested-build-environment
    - https://github.com/pyenv/pyenv/wiki/Common-build-problems

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


## Poetry

- Follow the [official installation instructions](https://python-poetry.org/docs/master/#installing-with-the-official-installer):

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

## Helix

- https://docs.helix-editor.com/install.html#build-from-source


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

## Rust
- follow the instrunctions from [the rust web page](https://www.rust-lang.org/tools/install):
    ```bash
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
    ```

## Pgadmin4

- https://www.pgadmin.org/download/pgadmin-4-apt/

## Pylsp

```bash
pip install "python-lsp-server[all]"
```

## Sdkman

- JVM tool

## Clojure

- (using sdkman)

## Leiningen

- (clojure tool, using sdkman)

## Postman

```bash
sudo snap install postman
```

## Insomnia

- Download and install the .deb file from https://insomnia.rest/download

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