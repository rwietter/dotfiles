```sh
sudo pacman -S docker docker-compose cronie git github-cli ltrace maim neofetch net-tools nitrogen feh nmap pax-utils pavucontrol powerline rofi rsync strace unzip  usbutils zsh wezterm vnstat tig dzen2 zsh-autosuggestions zsh-completions zsh-history-substring-search zsh-syntax-highlighting picom ttf-roboto ttf-icomoon-feather ttf-material-design-icons nautilus gucharmap gnome-keyring nodejs yarn gparted exa bat
```

# Install AUR
sudo nano /etc/pacman.conf

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

```sh
paru -S visual-studio-code-bin google-chrome-dev awesome-git brave-nightly-bin insomnia-bin megasync-bin picom-git spicetify-cli spotify stremio ttf-hasklig ttf-icomoon-feather ttf-material-design-icons zotero-bin zsh-autocomplete-git yt-dlp yarr-bin firefox-developer-edition keepassxc
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
