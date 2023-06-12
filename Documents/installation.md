sudo pacman -S xorg-server xorg-xinit xorg-apps gvfs-mtp

sudo pacman -S chromium git unzip picom nitrogen ttf-roboto ttf-icomoon-feather ttf-material-design-icons nautilus dzen2 gucharmap gnome-keyring nodejs yarn cronie vi usbutils pavucontrol gparted exa bat

# Install AUR
sudo nano /etc/pacman.conf

```bash
[archlinuxfr]
SigLevel = Never
Server = http://repo.archlinux.fr/$arch
```

## Install Paru
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si

---

paru -S visual-studio-code-bin pfetch zotero-bin

---

# Install ZSH

touch ~/.zshrc
sudo pacman -S zsh zsh-completions powerline zsh-syntax-highlighting zsh-history-substring-search zsh-autosuggestions
mkdir ~/ZSH
zsh
chsh -s /bin/zsh

systemctl --user enable mpd.service
systemctl --user start mpd.service