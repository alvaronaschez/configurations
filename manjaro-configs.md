# MANJARO CONFIGURATIONS

## Install these with Pacman

```sh
sudo pacman -S docker docker-compose
sudo pacman -S lazygit
# these are going to be probably needed for installing phpbrew, openvpn3, pyenv or others
# you can skip install them until you really need them
pacman -S automake unzip zip php pkg-config
```

## Install these with Yay

yay is a helper for managing aur packages

```sh
sudo pacman -S yay
yay -S openvpn3
yay -S lazydocker
```

## Install these with Snap

```sh
sudo snap install vscode
sudo snap install dbeaver-ce
sudo snap install slack --classic
sudo snap install discord
sudo snap install spotify
sudo snap install telegram-desktop
```

For Insomnia you have to download the `.snap` file first from [here](https://insomnia.rest/download)
And then `sudo snap install --dangerous ~/Downloads/Insomnia.Core-2022.5.1.snap`

## Configure git

git config --global user.email "alvaro.sanchez@fakemail.com"

## ssh

```sh
# generate ssh key
ssh-keygen -t rsa -C "your-email-address"
# print new generated public key
cat ~/.ssh/id_rsa.pub
```

- add the new ssh public key to GitHub, GitLab, Bitbucket, etc

## VSCode configuration

VSCode > File > Preferences > Keyboard Shortcuts > View: Toggle Terminal > Ctrl + Escape

## Phpbrew, Pyenv, Sdkman, Poetry

```sh
curl -L -O https://github.com/phpbrew/phpbrew/releases/latest/download/phpbrew.phar
chmod +x phpbrew.phar

curl -s "https://get.sdkman.io" | bash

curl -L https://github.com/pyenv/pyenv-installer/raw/master/bin/pyenv-installer | bash

curl -sSL https://install.python-poetry.org | python3 - 
```

add this at the end of your `.zshrc` file:

```sh
# pyenv
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# phpbrew
[[ -e ~/.phpbrew/bashrc ]] && source ~/.phpbrew/bashrc
```

## clone some repos

```sh
cd ~
git clone git@github.com:alvaronaschez/configurations.git configs
git clone git@github.com:alvaronaschez/books.git
mkdir ~/ws && cd ~/ws
git clone git@github.com:alvaronaschez/wallpapers.git
```

## Some useful links

- [Library Genesis+](https://libgen.gs/)
