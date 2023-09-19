export EDITOR='code'

export gcb="git -C "$1" branch | sed  '/^\*/!d;s/\* //"
export PATH="$PATH:/home/rwietter/.bin"

export C_INCLUDE_PATH=/usr/include/tirpc
export CPLUS_INCLUDE_PATH=/usr/include/tirpc
export LD_LIBRARY_PATH=/usr/lib
export LD_LIBRARY_PATH=/usr/lib/jvm/java-17-openjdk/lib/libnio.so

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# ~~~~~~~~~~~~ Powerline Prompt ~~~~~~~~~~~~~~~~~
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# source /usr/share/powerline/bindings/zsh/powerline.zsh
setxkbmap -model abnt2 -layout br -variant abnt2

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# ~~~~~~~~~~~~~~~~~~ LS_COLORS ~~~~~~~~~~~~~~~~~~
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
eval $(dircolors ~/.dir_colors)
alias ls='eza'
alias ll='eza --octal-permissions -lha'
alias grep='grep --color=auto'

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# ~~~~~~~~~~~~~~~~~ Export PATH ~~~~~~~~~~~~~~~~~
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completio

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
export PATH="$PATH:`pwd`/flutter/bin"

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
echo 'export PATH="$PATH:/usr/lib/dart/bin"' >> ~/.profile

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
export EDITOR=code
export VISUAL=code
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
source ~/ZSH/zsh-wakatime/zsh-wakatime.plugin.zsh
source ~/ZSH/completion.zsh
source ~/ZSH/prompt.zsh
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
# ~~~~~~~~~~~~~~~~~~~ Options ~~~~~~~~~~~~~~~~~~~
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

setopt AUTO_CD
setopt NO_CASE_GLOB
setopt NO_CASE_MATCH # case insensitive
setopt NO_HUP # don't kill jobs on exit
setopt NO_LIST_BEEP # no beep on error

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# ~~~~~~~~~~~~~~~~~~~ History ~~~~~~~~~~~~~~~~~~~
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
HISTSIZE=2000
HISTFILE=~/.zsh_history
setopt SHARE_HISTORY
SAVEHIST=2000
HISTDUP=erase # erase duplicates in the history file
setopt INC_APPEND_HISTORY
setopt HIST_IGNORE_SPACE
setopt EXTENDED_HISTORY
setopt HIST_VERIFY
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_EXPIRE_DUPS_FIRST # expire duplicates first
setopt HIST_IGNORE_DUPS # do not store duplications
setopt HIST_FIND_NO_DUPS #ignore duplicates when searching
setopt HIST_REDUCE_BLANKS # removes blank lines from history
setopt autopushd pushdsilent pushdtohome
setopt prompt_subst
setopt appendhistory
setopt sharehistory
setopt incappendhistory
setopt nohashdirs

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# You may need to manually set your language environment
export LANG=pt_BR.UTF-8

# Remove duplicate entries
setopt PUSHD_IGNORE_DUPS

# Autocomplete for aliases
setopt COMPLETE_ALIASES

## This reverts the +/- operators.
setopt PUSHD_MINUS

# Loading some useful modules:
zmodload -i zsh/complete
zmodload -i zsh/mapfile
zmodload -i zsh/mathfunc
zmodload -i zsh/complist
zmodload -i zsh/curses
zmodload -i zsh/datetime
zmodload -i zsh/terminfo
zmodload -i zsh/zle

# Loading module zmv
autoload -U zmv

# Enabling self-correction:
setopt correct
setopt correct_all

# Allows the use of wildcards: *?_-.[]~=/&;!#$%^(){}<>
setopt extended_glob

# Allowing self cd (There is no need to use the command cd):
setopt cdable_vars
setopt auto_pushd
setopt pushd_ignore_dups
setopt pushd_silent

# Auto-complete with <TAB>
setopt auto_list
setopt auto_menu
setopt case_glob
setopt list_types
setopt glob_complete
setopt menu_complete
setopt complete_in_word
setopt complete_aliases
autoload -Uz compinit promptinit vcs_info
compinit
promptinit
autoload -U colors && colors

# Expansion of variables like in bash CTRL+ALT+E
zstyle ':completion:*' completer _expand _complete
autoload -Uz compinit
compinit

# Misc
#setopt ZLE

# Enabling verbose mode:
zstyle ':completion:*' verbose 'yes'
zstyle ':completion:*' show-completer

# Persistent repetition:
zstyle ':completion:*' rehash true

# Colored stripe complementation:
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors 'reply=( "=(#b)(*$VAR)(?)*=00=$color[green]=$color[bg-green]" )'
zstyle ':completion:*:*:*:*:hosts' list-colors '=*=30;41'
zstyle ':completion:*:*:*:*:users' list-colors '=*=$color[green]=$color[red]'
zstyle ':completion:*' menu select

# Visual selection menu:
zstyle ':completion:*' menu select=3 _complete _i-patterns ignored_approximate
zstyle ':completion:*' select-prompt '%S zsh: Seleção atual = %p %s'

# Auto description of possible additions:
zstyle ':completion:*:options' description 'yes'
zstyle ':completion:*:options' auto-description '%d'

# Format of self-completion messages:
zstyle ':completion:*:corrections' format '%Bzsh: %d (erros: %e)%b'
zstyle ':completion:*:descriptions' format '%U%B%d%b%u'
zstyle ':completion:*:warnings' format '%Bzsh: Inválido como: %d%b'

# Listing self-complementation groups:
zstyle ':completion:*:matches' groups 'yes'
zstyle ':completion:*' list-grouped
zstyle ':completion:*' group-name ''
zstyle ':completion:*:*:-command-:*' group-order commands builtins

# Expand as much as possible:
zstyle ':completion:incremental:*' completer _complete _correct
zstyle ':completion:*' completer _complete _correct _match _approximate
zstyle ':completion:*:expand:*' tag-order all-expansions

# Number of errors to accept for autocompletion:
zstyle ':completion:*:approximate:*' max-errors 2 numeric

# Use '/d/s <TAB>' to expand to '/dir/subdir':
zstyle ':completion:*' expand 'yes'
zstyle ':completion:*' squeeze-slashes 'yes'

# Preserve prefix/suffix for autocompletion:
zstyle ':completion:*' expand prefix suffix
zstyle ':completion:*' completer _complete _prefix _match _approximate
zstyle ':completion:*' preserve-prefix '//[^ /]##/'
zstyle ':completion:*:match:*' original only
zstyle ':completion:*approximate :*' max-errors 1 numeric

# Option auto-cd should ignore the current directory:
zstyle ':completion:*:cd:*' ignore-parents parent pwd

# Avoid duplicate entries for the commands below:
zstyle ':completion:*:rm:*' ignore-line 'yes'
zstyle ':completion:*:cp:*' ignore-line 'yes'
zstyle ':completion:*:mv:*' ignore-line 'yes'

# Case-sensitive self-complementation:
zstyle ':completion:*:complete:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}'

# Self-complementary from Wildcards:
zstyle ':completion:*:complete-extended:*' matcher 'r:|[.,_-]=* r:|=*'

# Ignore auto-completion of internal functions of zsh:
zstyle ':completion:*:functions' ignored-patterns '_*'

# Autocomplete for the command 'kill':
zstyle ':completion:*:processes' command 'ps x -o pid,command'
zstyle ':completion:*:kill:*' menu yes select
zstyle ':completion:*:kill:*' force-list always
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'

# Do menu-driven completion.
zstyle ':completion:*' menu select

# Command help in the Zsh
autoload -U run-help
autoload run-help-git
autoload run-help-svn
autoload run-help-svk

# Zpty Module
zmodload zsh/zpty

unsetopt nomatch

# Disable percent sign
setopt PROMPT_CR
setopt PROMPT_SP

# Stop on '/' character when deleting words using ^H.
autoload -U select-word-style
select-word-style bash

# Automatically quote meta-characters like question marks, quotes and ampersands during typing or pasting.
autoload -U url-quote-magic
zle -N self-insert url-quote-magic

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

[[ -n "${key[Home]}"    ]]  && bindkey  "${key[Home]}"    beginning-of-line
[[ -n "${key[End]}"     ]]  && bindkey  "${key[End]}"     end-of-line
[[ -n "${key[Insert]}"  ]]  && bindkey  "${key[Insert]}"  overwrite-mode
[[ -n "${key[Delete]}"  ]]  && bindkey  "${key[Delete]}"  delete-char
[[ -n "${key[Up]}"      ]]  && bindkey  "${key[Up]}"      up-line-or-beginning-search
[[ -n "${key[Down]}" ]] && bindkey "${key[Down]}"         down-line-or-beginning-search
[[ -n "${key[Left]}"    ]]  && bindkey  "${key[Left]}"    backward-char
[[ -n "${key[Right]}" ]] && bindkey "${key[Right]}" forward-char

#--------------------------------------------------------------------#
# Global Configuration Variables                                     #
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

# To define styles for nested brackets up to level 4
ZSH_HIGHLIGHT_STYLES[bracket-level-1]='fg=blue,bold'
ZSH_HIGHLIGHT_STYLES[bracket-level-2]='fg=red,bold'
ZSH_HIGHLIGHT_STYLES[bracket-level-3]='fg=yellow,bold'
ZSH_HIGHLIGHT_STYLES[bracket-level-4]='fg=magenta,bold'

ZSH_HIGHLIGHT_STYLES[bracket-error]='fg=blue,bold'

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
ZSH_HIGHLIGHT_STYLES[reserved-word]='fg=253'
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]='fg=cyan'
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]='fg=208'
ZSH_HIGHLIGHT_STYLES[back-quoted-argument]='fg=135'
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]='fg=123'
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]='fg=105'
ZSH_HIGHLIGHT_STYLES[dollar-double-quoted-argument]='fg=14'
ZSH_HIGHLIGHT_STYLES[back-double-quoted-argument]='fg=7'
ZSH_HIGHLIGHT_STYLES[back-dollar-quoted-argument]='fg=30'
ZSH_HIGHLIGHT_STYLES[path_pathseparator]='fg=15'
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]='fg=220'
# To have paths colored instead of underlined
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
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
