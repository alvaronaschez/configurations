# MANJARO CONFIGURATIONS

## Install these with Pacman

```zsh
sudo pacman -S docker docker-compose
# these are going to be probably needed for installing phpbrew, openvpn3, pyenv or others
# you can skip install them until you really need them
pacman -S automake unzip zip php pkg-config
```

## Install these with Snap

```bash
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

```zsh
# generate ssh key
ssh-keygen -t rsa -C "your-email-address"
# print new generated public key
cat ~/.ssh/id_rsa.pub
```

- add the new ssh public key to GitHub, GitLab, Bitbucket, etc

## VSCode configuration

VSCode > File > Preferences > Keyboard Shortcuts > View: Toggle Terminal > Ctrl + Escape

## Some dependencies you would need for installing phpbrew, openvpn3 or pyenv

```zsh

```

## Phpbrew, Pyenv, Sdkman, Poetry

```zsh
curl -L -O https://github.com/phpbrew/phpbrew/releases/latest/download/phpbrew.phar
chmod +x phpbrew.phar

curl -s "https://get.sdkman.io" | bash

curl -L https://github.com/pyenv/pyenv-installer/raw/master/bin/pyenv-installer | bash

curl -sSL https://install.python-poetry.org | python3 - 
```

add this at the end of your `.zshrc` file:

```zsh
# pyenv
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# phpbrew
[[ -e ~/.phpbrew/bashrc ]] && source ~/.phpbrew/bashrc
```

## Openvpn3

```zsh
sudo pacman -S yay
sudo yay -S openvpn3
```

## clone some repos

```bash
cd ~Wit
git clone git@github.com:alvaronaschez/configurations.git configs
git clone git@github.com:alvaronaschez/books.git
mkdir ~/ws && cd ~/ws
git clone git@github.com:alvaronaschez/wallpapers.git
```

## Lazy Docker

- <https://github.com/jesseduffield/lazydocker#installation>

```bash
curl https://raw.githubusercontent.com/jesseduffield/lazydocker/master/scripts/install_update_linux.sh | bash
```

## Some useful links

- [Library Genesis+](https://libgen.gs/)
