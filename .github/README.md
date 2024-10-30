<h2 align="center">Dotfiles</h2>

<img src="https://0x0.st/HDbF.png" alt="screenshots" align="center" width="100%" />

<img src="https://0x0.st/Hn8B.png" alt="screenshots" align="center" width="100%" />

<div>
    <img src="https://0x0.st/HGH0.png" alt="screenshots" align="right" width="65%" />
    <h3>Description</h3>
    <p>This my Arch Linux System dotfiles</p>
    <h3>Setup</h3>
    <ul>
      <li><strong>WM</strong>: Awesome</li>
      <li><strong>Browser</strong>: Brave</li>
      <li><strong>Text Editor</strong>: Code</li>
      <li><strong>Music</strong>: MPD</li>
      <li><strong>Music Visualizer</strong>: NCMPCPP</li>
      <li><strong>Terminal</strong>: Wezterm</li>
      <li><strong>Compositor</strong>: Picom</li>
    </ul>
</div>

<br/><hr/>

<h3>SETUP</h3>

| `Description`        | `Packages`                                    |
| -------------------- | --------------------------------------------- |
| Window Manager       | awesome-git                                   |
| GUI File Manager     | nautilus                                      |
| Browser              | brave-nightly                                 |
| Text Editor          | code                                          |
| Music                | mpd - ncmpcpp - spotify (spicetify)           |
| Menu Launcher        | rofi                                          |
| Terminal             | wezterm                                       |
| Compositor           | picom                                         |
| Screen Capture       | scrot and maim                                |
| SHELL                | fish                                          |
| Markdown Viewer      | glow                                          |
| Notes                | obsidian                                      |
| Translations         | translate-shell                               |
| Content Viewer (cat) | bat                                           |
| List files           | exa                                           |
| Search files         | fd                                            |
| Notifications        | dunst                                         |
| Benchmark tool       | hyperfine                                     |
| Terminal recorder    | asciinema                                     |
| System info          | nitch - dzen2 - neofetch - inxi               |
| JSON parser          | jq                                            |
| Network info         | vnstat                                        |
| System monitor       | bashtop - gotop (gtop) - bottom (btm)         |
| Cron                 | cronie                                        |
| Line tracer          | ltrace                                        |
| System tracer        | strace                                        |
| Process tracer       | ptrace                                        |
| Line code tracker    | tokei                                         |
| Command info         | tealdeer (tldr <command>)                     |
| CLI File Manager     | ranger - lf                                   |
| Feed RSS             | yarr                                          |
| Reader PDF           | zathura - zotero                              |
| Password manager     | keepassxc                                     |
| Movies               | stremio                                       |
| Containers           | docker - podman - dive (inspect)              |
| Container stats      | ctop                                          |
| API Client           | bruno - curl - insomnia                       |
| Database Client      | beekeeper-studio-bin                          |
| Git                  | better-commits - tig - Git File History (ext) |
| GitHub Client        | github-cli                                    |
| SCM                  | git - fossil                                  |
| Git Highlight        | git-delta                                     |
| Image Viewer         | feh - nitrogen - viewnior                     |
| Image Upload         | 0x0.st                                        |
| Character Map        | gucharmap                                     |
| LS_COLORS            | vivid                                         |
| gsettings editor     | dconf-editor                                  |

## Colors

Ephemeral based

![img](https://0x0.st/HGfx.png)

## Fonts

- [Berkeley Mono](https://berkeleygraphics.com/typefaces/berkeley-mono/)
- [Geist Mono](https://vercel.com/font/mono)

## Applications

Pacman Packages

```bash
sudo pacman -S docker acpid acpi inxi jq fpp lazydocker podman eza earlyoom bc ctop dunst bottom docker-compose cronie git github-cli ltrace maim neofetch net-tools  nitrogen feh nmap pax-utils pavucontrol stow powerline rofi rsync strace unzip usbutils zsh wezterm tree vnstat tig dzen2 zsh-autosuggestions glow zsh-completions zsh-history-substring-search zsh-syntax-highlighting fish fisher fzf translate-shell fd bat ripgrep exa dust hyperfine tokei tealdeer bashtop curl asciinema ranger obsidian neovim ncmpcpp mpd ttf-roboto nautilus gnome-keyring nodejs yarn gparted inotify-tools bluez bluez-utils bluez-plugins playerctl redshift upower xorg xorg-init tar unzip dive vivid git-delta lf brightnessctl ueberzug w3m viewnior fossil dconf-editor noto-fonts-emoji
```

AUR Packages

```bash
paru -S visual-studio-code-bin awesome-git insomnia-bin megasync-bin picom-git spicetify-cli spotify stremio ttf-hasklig ttf-icomoon-feather ttf-material-design-icons zotero-bin zsh-autocomplete-git yt-dlp yarr-bin firefox-developer-edition keepassxc nitch gotop beekeeper-studio-bin cutefish-cursor-themes-git cutefish-icons thorium-browser-bin cava sortty
```

Snap Packages

```bash
sudo snap install bruno
```

NPM Packages

```bash
npm install -g better-commits
```

## How to install using Stow

```bash
sudo pacman -S stow
```

Clone the repository

```bash
git clone https://github.com/rwietter/dotfiles.git
stow -vSt ~ dotfiles # -v for verbose, -S for stow, -t for target
```

If any conflict occurs with existing files, remove them and make a backup or run `--restore` (**delete + stow**), this will **delete** the files and create a dotfiles symbolic link for them.

## License

This project is licensed under the Unlicense - see the [LICENSE](LICENSE) file for details.

## Credits

- [Harry](https://github.com/saimoomedits) by Awesome base configuration
- [Andreas](https://github.com/andreasgrafen/cascade) by Cascade Firefox theme

## Screenshots

![img3](https://0x0.st/HDcr.png)

![img4](https://0x0.st/HDcs.png)

![img5](https://0x0.st/HGfF.png)

---

**<samp>Dotfiles [rwietter](https://rwietterc.xyz)</samp>** | Released under the [Unlicense](LICENSE)<br>
