# Fig pre block. Keep at the top of this file.
# [[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.pre.zsh"
setxkbmap -model abnt2 -layout br -variant abnt2

# ~~~~~~~~~~~~ Powerline Prompt ~~~~~~~~~~~~~~~~~
source /usr/share/powerline/bindings/zsh/powerline.zsh

# ~~~~~~~~~~~~~~~~~~ LS_COLORS ~~~~~~~~~~~~~~~~~~
eval $(dircolors ~/.dir_colors)
alias ls='eza'
alias ll='eza --octal-permissions -lha'
alias grep='grep --color=auto'

# ~~~~~~~~~~~~~~~~~ Export PATH ~~~~~~~~~~~~~~~~~

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completio

# export http_proxy=proxy.ufsm.br:8080
# export https_proxy=$http_proxy
# export ftp_proxy=$http_proxy
# export rsync_proxy=$http_proxy
# export no_proxy="localhost,127.0.0.1,localaddress,.localdomain.com"

export PATH=$PATH:$(yarn global bin)
export PATH=~/.npm-global/bin:$PATH
export JAVA_HOME='/usr/lib/jvm/java-11-openjdk'
export ANDROID_SDK_ROOT='/opt/android-sdk'
export ANDROID_HOME='~/Android/Sdk'
JAVA_OPTS='-XX:+IgnoreUnrecognizedVMOptions'
export PATH="$PATH:$(pwd)/flutter/bin"
export PATH="$PATH:/home/rwietter/.bin"
export RUST_BACKTRACE=1

# react-native
export ANDROID_HOME='~/Android/Sdk'
export PATH=$PATH:'~/Android/Sdk/emulator'
export PATH=$PATH:'~/Android/Sdk/tools'
export PATH=$PATH:'~/Android/Sdk/tools/bin'
export PATH=$PATH:'~/Android/Sdk/platform-tools'
export PATH=$PATH:'~/android-studio/bin'
export CHROME_EXECUTABLE="/bin/chromium"
export PATH="$PATH:/usr/lib/dart/bin"
export FLYCTL_INSTALL="/home/rwietter/.fly"
export PATH="$FLYCTL_INSTALL/bin:$PATH"
echo 'export PATH="$PATH:/usr/lib/dart/bin"' >>~/.profile

# Haskell
export PATH="$HOME/.cabal/bin:$PATH"

# Flutter
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools/
export PATH=$PATH:$ANDROID_HOME/tools/bin/
export PATH=$PATH:$ANDROID_HOME/tools/
PATH=$ANDROID_HOME/emulator:$PATH
export ANDROID_HOME=$HOME/Android/Sdk
export CHROME_EXECUTABLE=/bin/google-chrome-stable
export ANDROID_SDK_ROOT=$ANDROID_HOME

# PHP
export PATH=$PATH:~/.config/composer/vendor/laravel/installer/bin

# Vim
export PATH=~/.local/bin/lvim:$PATH
export EDITOR=vim
export VISUAL=vim
export PATH="$(yarn global bin):$PATH"
export PATH=~/.npm-global/bin:$PATH

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
[ -s "/home/rwietter/.bun/_bun" ] && source "/home/rwietter/.bun/_bun"

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# ~~~~~~~~~~~~~~~~~~~ PLUGINS ~~~~~~~~~~~~~~~~~~~
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh
# source /usr/share/zsh/plugins/zsh-autocomplete/zsh-autocomplete.plugin.zsh
# source ~/ZSH/zsh-wakatime/zsh-wakatime.plugin.zsh
source ~/ZSH/completion.zsh
# source ~/ZSH/prompt.zsh # powerline alternative
# source ~/ZSH/zsh_functions
wd() {
    . ~/ZSH/wd/wd.sh
}

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# ~~~~~~~~~~~~~~~~~~~ ALIASES ~~~~~~~~~~~~~~~~~~~
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
test -r ~/ZSH/aliases && source ~/ZSH/aliases
test -r ~/ZSH/aliases-git && source ~/ZSH/aliases-git

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# ~~~~~~~~~~~~~~~~~~~ History ~~~~~~~~~~~~~~~~~~~
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
HISTSIZE=2000
HISTFILE=~/.zsh_history
setopt SHARE_HISTORY
SAVEHIST=2000
HISTDUP=erase # erase duplicates in the history file

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

## -------------------------------------------------------------------------------------- ##

# Bindkeys
bindkey -v

#Cleaning terminal screen with key <ESC>:
bindkey '^[' clear-screen

# Kill input from the current point to the end of line with Ctrl-k
bindkey '^k' kill-line

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

autoload -Uz up-line-or-beginning-search down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

#[[ -n "$key[Up]"   ]] && bindkey — "$key[Up]"   up-line-or-beginning-search
#[[ -n "$key[Down]" ]] && bindkey — "$key[Down]" down-line-or-beginning-search

typeset -A key

key[Home]=${terminfo[khome]}
key[End]=${terminfo[kend]}
key[Insert]=${terminfo[kich1]}
key[Delete]=${terminfo[kdch1]}
key[Up]=${terminfo[kcuu1]}
key[Down]=${terminfo[kcud1]}
key[Left]=${terminfo[kcub1]}
key[Right]=${terminfo[kcuf1]}
key[PageUp]=${terminfo[kpp]}
key[PageDown]=${terminfo[knp]}

[[ -n "${key[Home]}" ]] && bindkey "${key[Home]}" beginning-of-line
[[ -n "${key[End]}" ]] && bindkey "${key[End]}" end-of-line
[[ -n "${key[Insert]}" ]] && bindkey "${key[Insert]}" overwrite-mode
[[ -n "${key[Delete]}" ]] && bindkey "${key[Delete]}" delete-char
[[ -n "${key[Up]}" ]] && bindkey "${key[Up]}" up-line-or-beginning-search
[[ -n "${key[Down]}" ]] && bindkey "${key[Down]}" down-line-or-beginning-search
[[ -n "${key[Left]}" ]] && bindkey "${key[Left]}" backward-char
[[ -n "${key[Right]}" ]] && bindkey "${key[Right]}" forward-char

#--------------------------------------------------------------------#
#--------------------------------------------------------------------#

# Color to use when highlighting suggestion
# Uses format of `region_highlight`
# More info: http://zsh.sourceforge.net/Doc/Release/Zsh-Line-Editor.html#Zle-Widgets
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=8'

# Widgets that clear the suggestion
ZSH_AUTOSUGGEST_CLEAR_WIDGETS=(
    history-search-forward
    history-search-backward
    history-beginning-search-forward
    history-beginning-search-backward
    history-substring-search-up
    history-substring-search-down
    up-line-or-history
    down-line-or-history
    accept-line
)

# Widgets that accept the entire suggestion
ZSH_AUTOSUGGEST_ACCEPT_WIDGETS=(
    forward-char
    end-of-line
    vi-forward-char
    vi-end-of-line
    vi-add-eol
)

# Widgets that accept the entire suggestion and execute it
ZSH_AUTOSUGGEST_EXECUTE_WIDGETS=(
)

# Widgets that accept the suggestion as far as the cursor moves
ZSH_AUTOSUGGEST_PARTIAL_ACCEPT_WIDGETS=(
    forward-word
    vi-forward-word
    vi-forward-word-end
    vi-forward-blank-word
    vi-forward-blank-word-end
)

# Widgets that should be ignored (globbing supported but must be escaped)
ZSH_AUTOSUGGEST_IGNORE_WIDGETS=(
    orig-\*
    beep
    run-help
    set-local-history
    which-command
    yank
)

# Pty name for calculating autosuggestions asynchronously
ZSH_AUTOSUGGEST_ASYNC_PTY_NAME=zsh_autosuggest_pty

#  Is a global variable that defines how the query should be highlighted inside a matching command
HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_FOUND='bg=default,fg=default,bold'

# Is a global variable that defines how the query should be highlighted when no commands in the history match it.
HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_NOT_FOUND='bg=default,fg=white,bold'

# Is a global variable that defines how the command history will be searched for your query. Its default value causes this script to perform a case-insensitive search
HISTORY_SUBSTRING_SEARCH_GLOBBING_FLAGS='i'

# Declare the variable
typeset -A ZSH_HIGHLIGHT_STYLES

# To differentiate aliases from other command types
ZSH_HIGHLIGHT_STYLES[alias]='fg=magenta'
ZSH_HIGHLIGHT_STYLES[function]='fg=yellow'
ZSH_HIGHLIGHT_STYLES[builtin]='fg=green'
ZSH_HIGHLIGHT_STYLES[command]='fg=red'
ZSH_HIGHLIGHT_STYLES[precommand]='fg=blue'
ZSH_HIGHLIGHT_STYLES[commandseparator]='fg=127'
ZSH_HIGHLIGHT_STYLES[redirection]='fg=167'
ZSH_HIGHLIGHT_STYLES[path]='fg=cyan'
ZSH_HIGHLIGHT_STYLES[path_pathseparator]='fg=208'
ZSH_HIGHLIGHT_STYLES[path_prefix]='fg=161'
ZSH_HIGHLIGHT_STYLES[path_prefix_pathseparator]='fg=154'
# To enable highlighting of globbing expressions
ZSH_HIGHLIGHT_STYLES[globbing]='yellow'
# To enable cursor highlighting
ZSH_HIGHLIGHT_STYLES[cursor]='bg=cyan'
#The style for the whole line
ZSH_HIGHLIGHT_STYLES[line]='bold'
TERM=xterm-256color
export PATH=$PATH:/home/rwietter/.spicetify

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion

# pnpm
export PNPM_HOME="/home/rwietter/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.post.zsh"

source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
