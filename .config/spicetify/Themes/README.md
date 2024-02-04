# Illusion for Spicetify

[Illusion](https://github.com/rwietter/illusion-spicetify) is a dark theme for Spotify that is based on the [Dribbblish](https://github.com/spicetify/spicetify-themes). It is designed to be minimalistic and clean, while also being easy on the eyes.

![Playlist](https://0x0.st/HDBZ.png)

![Home](https://0x0.st/HDBq.png)

## Notes:

*   **These themes require that you have the latest version of Spotify and Spicetify.**
*   **To install the Illusion theme, follow the instructions below**.
*   **Spotify ad-blocked version is not supported.**

## Installation and usage

1.  Clone this repository. Make sure [git](https://git-scm.com/) is installed and run:
    ```bash
    git clone --depth=1 https://github.com/rwietter/illusion-spicetify.git
    ```

2.  Copy the files into the [Spicetify Themes folder](https://spicetify.app/docs/development/themes). Run:

    **Linux**

    ```bash
    cd illusion-spicetify
    cp -r * ~/.config/spicetify/Themes
    ```

    **MacOS**

    ```bash
    cd illusion-spicetify
    cp -r * ~/.config/spicetify/Themes
    ```

    **Windows**

    ```powershell
    cd illusion-spicetify
    cp * "$(spicetify -c | Split-Path)\Themes\" -Recurse
    ```

3.  Choose which theme to apply just by running:
    ```bash
    spicetify config current_theme Illusion color_scheme Base
    ```

## Colorscheme

```
*color0: "#0F0F11",
*color1: "#F48FB1",
*color2: "#A1EFD3",
*color3: "#EBDDAA",
*color4: "#A4B9EF",
*color5: "#BD99FF",
*color6: "#87DFEB",
*color7: "#FFFFFF"
```

## Contributions

We've set up a separate document for our [contribution guidelines](./CONTRIBUTING.md).