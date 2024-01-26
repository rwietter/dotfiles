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

---

## Shortcuts

| shortcut | description                       |
| -------- | --------------------------------- |
| CTRL + L | Limpa a tela                      |
| CTRL + R | Pesquisa no histórico de comandos |
| CTRL + D | Sai do terminal                   |
| CTRL + U | Apaga a linha inteira             |

---

```bash
# -- Configs
# ----------
set -g fish_color_autosuggestion ccc # Set color for autosuggestions
set -g fish_color_cancel -r # Set color for cancel
set -x fish_key_bindings fish_default_key_bindings # Disable vi mode

# -- Prompt settings
starship init fish | source # Enable starship prompt
set --global hydro_symbol_prompt "λ" # Set new icon for prompt

```