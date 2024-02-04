# Illusion

![Playlist](https://0x0.st/HDBZ.png)

![Home](https://0x0.st/HDBq.png)

<!-- ## Auto-install

Make sure you are using spicetify >= v2.30.0 and Spotify >= v1.2.26.

### Windows

```powershell
Invoke-WebRequest -UseBasicParsing "https://raw.githubusercontent.com/spicetify/spicetify-themes/master/Dribbblish/install.ps1" | Invoke-Expression
```

## Manual Install

Run these commands:

### Linux and MacOS:

In **Bash**:
```bash
cd "$(dirname "$(spicetify -c)")/Themes/Dribbblish"
spicetify config current_theme Dribbblish color_scheme base
spicetify config inject_css 1 replace_colors 1 overwrite_assets 1 inject_theme_js 1
spicetify apply
```

### Windows

In **Powershell**:
```powershell
cd "$(spicetify -c | Split-Path)\Themes\Dribbblish"
spicetify config current_theme Dribbblish color_scheme base
spicetify config inject_css 1 replace_colors 1 overwrite_assets 1 inject_theme_js 1
spicetify apply
```

From Spotify > v1.1.62, in sidebar, they use an adaptive render mechanic to actively show and hide items on scroll. It helps reducing number of items to render, hence there is significant performance boost if you have a large playlists collection. But the drawbacks is that item height is hard-coded, it messes up user interaction when we explicity change, in CSS, playlist item height bigger than original value. So you need to add these 2 lines in Patch section in config file:
```ini
[Patch]
xpui.js_find_8008 = ,(\w+=)32,
xpui.js_repl_8008 = ,${1}56,
```

## Auto-uninstall 
### Windows
```powershell
Invoke-WebRequest -UseBasicParsing "https://raw.githubusercontent.com/spicetify/spicetify-themes/v2/Dribbblish/uninstall.ps1" | Invoke-Expression
```

## Manual uninstall 
Remove the dribbblish theme with the following commands 

```
spicetify config current_theme " " color_scheme " "
spicetify apply
``` -->
