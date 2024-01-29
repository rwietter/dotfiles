## Vi mode

| operator | description                                                                                                 |
| -------- | ----------------------------------------------------------------------------------------------------------- |
| I        | Move o cursor para o início da linha e entra no Modo de Inserção                                            |
| ESC      | Sai do modo de inserção                                                                                     |
| ^        | Move o cursor para o primeiro caractere não vazio da linha                                                  |
| A        | Move o cursor para o final da linha e entra no Modo de Inserção                                             |
| $        | Move o cursor para o final da linha                                                                         |
| x        | Exclui o caractere sob o cursor                                                                             |
| X        | Exclui o caractere à esquerda do cursor                                                                     |
| r        | Substitui o caractere sob o cursor por outro caractere (digite o caractere desejado depois de pressionar r) |
| u        | Desfaz a última ação                                                                                        |
| v        | Entra no Modo de Seleção Visual, permitindo q vc selecione texto com as teclas de navegação                 |
| dd       | Recorta a linha atual                                                                                       |
| yy       | Copia a linha atual                                                                                         |
| p        | Cola o conteúdo copiado ou recortado após o cursor                                                          |
| :/       | Pesquisa no histórico de comandos                                                                           |
| 0        | Move o cursor para o início da linha                                                                        |

## Shortcuts

| shortcut       | description           |
| -------------- | --------------------- |
| CTRL + L       | Limpa a tela          |
| CTRL + D       | Sai do terminal       |
| CTRL + U       | Apaga a linha inteira |
| CTRL + V       | Search Variables      |
| CTRL + R       | Search history        |
| CTRL + ALT + F | Search directory      |
| CTRL + ALT + L | Search git log        |
| CTRL + ALT + S | Git status            |
| CTRL + ALT + P | Search Processes      |


## Others configs

```bash
# -- Configs
# ----------
set -g fish_color_autosuggestion ccc # Set color for autosuggestions
set -g fish_color_cancel -r # Set color for cancel
set -x fish_key_bindings fish_default_key_bindings # Disable vi mode
abbr --erase (abbr --list) # Clear all abbr

# -- Prompt settings
starship init fish | source # Enable starship prompt
set --global hydro_symbol_prompt "λ" # Set new icon for prompt

# Add colors to ls
set -x LS_COLORS (vivid generate nord)  # Set LS_COLORS

# Erase environment variables
set --erase <VAR_NAME>

```

## External plugins

### asdf
    
```bash
asdf plugin list all # List all plugins
asdf plugin add <plugin-name> # Add a new plugin
asdf install <plugin-name> <version> # Install a new version
asdf local nodejs 21.6.1 # Set a local version (global = for all projects | local = for current project | shell = for current shell)
asdf current # Show current version
asdf current <plugin-name> # Show current version for a specific plugin
asdf uninstall <plugin-name> <version> # Uninstall a specific version
```

### Forgit

#### Keybindings

| key      | description       |
| -------- | ----------------- |
| CTRL + W | Wrap/Unwrap lines |

## Docs

```bash
fish_user_paths: a list of directories that are prepended to PATH.
fish_add_path: add a directory to the front of PATH.
```