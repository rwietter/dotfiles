# Install AUR

```sh
sudo nano /etc/pacman.conf
```

```bash
[archlinuxfr]
SigLevel = Never
Server = http://repo.archlinux.fr/$arch
```

## Install Paru

```sh
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
```

# Install ZSH

```sh
touch ~/.zshrc
sudo pacman -S zsh zsh-completions powerline zsh-syntax-highlighting zsh-history-substring-search zsh-autosuggestions
mkdir ~/ZSH
zsh
chsh -s /bin/zsh
```

# NPM Global Packages

```sh
$ mkdir ~/.npm-global
$ npm config set prefix '~/.npm-global'

# Adicionar o path ao .zshrc
export PATH=~/.npm-global/bin:$PATH 

$ source ~/.zshrc
```

```sh
npm install -g degit
```
