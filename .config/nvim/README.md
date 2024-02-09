## Escape sequences

leader = Space
A = Alt
C = Ctrl
S = Shift

## Keymap modes

Insert = i
Normal = Esc
Visual = v
V-block = Ctrl + v
V-line = Shift + v

## Favorite Shortcuts

| Shortcut      | Description                                  |
| ------------- | -------------------------------------------- |
| Alt + h       | Abre o terminal na horizontal                |
| Ctrl + f      | Abre/fecha a árvore de arquivos e diretórios |
| Shift + Tab   | Alterna entre as abas                        |
| Space + f     | Abre a pesquisa por arquivo                  |
| Ctrl + t      | Abre um workspace novo                       |
| Space + ch    | Mostra o cheat sheet                         |
| dd            | deleta a linha                               |
| d             | (editor) deleta a seleção de texto           |
| yy            | copia a linha ou a seleção                   |
| p             | cola a linha                                 |
| u             | Desfaz a última ação                         |
| Ctrl + r      | Refaz a última ação                          |
| Alt + c       | cria um arquivo ou diretório                 |
| Alt + r       | renomeia o arquivo ou diretório              |
| d             | (nvim-tree) deleta o arquivo ou diretório    |
| Space + s + B | Abre o Telescope Browser                     |
| Space + f + f | Abre a pesquisa por files                    |
| Space + f + w | Abre a pesquisa por words                    |

## Shortcuts

| Shortcut      | Description                                                    |
| ------------- | -------------------------------------------------------------- |
| CTRL + f      | Abre/fecha a árvore de arquivos e diretórios                   |
| CTRL + h      | Vai para a árvore de arquivos e diretórios                     |
| CTRL + l      | Vai para o editor                                              |
| Shift + Tab   | Alterna entre as abas                                          |
| u             | Desfaz a última ação                                           |
| CTRL + r      | Refaz a última ação                                            |
| CTRL + s      | Salva o arquivo em modo normal                                 |
| CTRL + q      | Fecha o arquivo                                                |
| CTRL + w      | Fecha o arquivo                                                |
| CTRL + p      | Navega para cima no arquivo                                    |
| CTRL + i      | Abre o arquivo quando o cursor está em cima do nome do arquivo |
| CTRL + v      | Cria um bloco                                                  |
| 0             | Vai para o início da linha                                     |
| $             | Vai para o final da linha                                      |
| gg            | Vai para o início do arquivo                                   |
| G             | Vai para o final do arquivo                                    |
| Space + th    | Abre o theme switcher                                          |
| Alt + h       | Abre o terminal na horizontal                                  |
| Alt + v       | Abre o terminal na vertical                                    |
| Space + f + g | Abre a pesquisa por grep                                       |
| Space + S     | pesquisa por palavra no nvim-tree (nvim-tree focus)            |

### Visual

| Shortcut                  | Description                               |
| ------------------------- | ----------------------------------------- |
| v                         | muda para o modo visual                   |
| v + up, down, left, right | move o cursor no modo visual              |
| dd                        | deleta a linha no modo visual             |
| yy                        | copia a linha ou a seleção no modo visual |
| p                         | cola a linha no modo visual               |

## Commands

| Command | Description                          |
| ------- | ------------------------------------ |
| :q      | Fecha o arquivo                      |
| :w      | Salva o arquivo                      |
| :wq     | Salva e fecha o arquivo              |
| :q!     | Fecha o arquivo sem salvar           |
| :e      | Abre um arquivo                      |
| :sp     | Abre um novo arquivo                 |
| :vsp    | Abre um novo arquivo na vertical     |
| :tabnew | Abre um novo arquivo em uma nova aba |

## Leader (Space)

| Shortcut  | Description                 |
| --------- | --------------------------- |
| Space + b | Abre um novo arquivo        |
| Space + f | Abre a pesquisa por arquivo |
| Space + p | Abre a pesquisa por texto   |
| Space x   | Fecha o arquivo atual       |

### Tree file

| Shortcut | Description                           |
| -------- | ------------------------------------- |
| H        | hide/display hidden files and folders |
| R        | refresh                               |

## Telescope File Browser

| Shortcut      | Description                                                                             |
| ------------- | --------------------------------------------------------------------------------------- |
| Space + s + B | Abre o Telescope Browser                                                                |
| Tab           | Seleciona files up to down                                                              |
| Shift + Tab   | Seleciona files down to up                                                              |
| Alt + m       | Navegue até o diretório e clique em `Alt + m` para mover o arquivo para outro diretório |

## Multi select edit

| Shortcut                              | Description                             |
| ------------------------------------- | --------------------------------------- |
| Ctrl + Down, Up                       | Selecionar em coluna                    |
| Shift + Left, Right                   | Selecionar em linha                     |
| ctrl + Up, Down + Shift + Left, Right | seleciona um bloco e as linhas do bloco |

### Multi select edit em {v-l}-block

Primeiro, entre no modo v-block (ctrl + v) ou l-block (shift + v)

| Shortcut                | Description                                              |
| ----------------------- | -------------------------------------------------------- |
| Ctrl + Down, Up         | Selecionar em coluna                                     |
| Shift + Left, Right     | Selecionar em linha                                      |
| Ctrl + Up, Down + c     | seleciona, apaga a seleção e manter o cursor para edição |
| Shift + Left, Right + c | seleciona, apaga a seleção e manter o cursor para edição |
