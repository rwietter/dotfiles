# ---------------- Settings --------------------
# ----------------------------------------------
set -g fish_greeting                           # disable fish greeting
set -g fish_history 10000                      # Increase history size
set -g fish_complete_select_descriptions yes   # Show descriptions for completions
set -g fish_complete_select_colorize yes       # Colorize completions
set -g fish_autosuggestion_enabled 1           # Enable autosuggestions


set -g fish_vi_force_cursor 1                  # Force cursor to be line
set -g fish_cursor_default line blink          # Set cursor to line and blink
set -g fish_cursor_insert line blink           # Set cursor to line and blink in insert mode
set -g fish_cursor_replace_one line blink      # Set cursor to line and blink in replace mode
set -g fish_cursor_external line blink         # Set cursor to line and blink in external mode
set -g fish_cursor_visual line blink           # Set cursor to line and blink in visual mode

set -g hydro_fetch true                        # Enable git background fetch
set -g hydro_multiline false                   # Disable multiline git status
set -g hydro_symbol_git_dirty " "             # Set git dirty symbol


# -------------- Theme Colors ------------------
# ----------------------------------------------
# fish_config theme choose "Dracula Official"   # Set theme


# ----------------- Prompt ---------------------
# ----------------------------------------------


# ----------------- Source ---------------------
# ----------------------------------------------
function source_aliases
    for file in (find ~/.config/fish/functions -type f -name '*.fish')
        source $file
    end
end

source_aliases           # Source aliases
source ~/.asdf/asdf.fish # Source asdf (version manager)

# ----------------- Aliases --------------------
# ----------------------------------------------
alias ls "exa --icons --group-directories-first --color=always" # ls with icons

# ------------------ Paths ---------------------
# ----------------------------------------------
set -ag fish_user_paths "$HOME"/.npm-global/bin
set -ag fish_user_paths "$HOME"/.cargo/blink
set -ag fish_user_paths "$HOME"/.spicetify
set -ag fish_user_paths "$HOME"/Downloads/roc_nightly-linux_x86_64-2024-01-20-ebfcd71
set -ag fish_user_paths "$HOME"/.local/bin

# --------------- Environments -----------------
# ----------------------------------------------
set -gx TERM wezterm                    # Set terminal to wezterm
set -gx EDITOR nvim                     # Set editor to nvim
set -gx VISUAL nvim                     # Set visual editor to nvim
set -gx BROWSER firefox                 # Set browser to firefox
set -gx LANG pt_BR.UTF-8                # Set language to pt_BR.UTF-8
set -gx LC_ALL pt_BR.UTF-8              # Set locale to pt_BR.UTF-8
set -U ABBR_TIPS_PROMPT "❱ \e[38;2;243;134;48;4;1m{{ .abbr }}\e[0m => \e[38;2;189;153;255;4;1m{{ .cmd }}\e[0m"
set -U ABBR_TIPS_REGEXES '(^(\w+\s+)+(-{1,2})\w+)(\s\S+)' '(^( ?\w+){3}).*' '(^( ?\w+){2}).*' '(^( ?\w+){1}).*'

# ----------------- Functions ------------------
# ----------------------------------------------
function fish_mode_prompt; end # Disable fish mode prompt (vi mode)


# ------------------ Plugins -------------------
# ----------------------------------------------
# kidonng/zoxide.fish
zoxide init fish | source    # like cd with superpowers
set -gx zoxide_cmd j # jump to directory with zoxide (use j instead of z and ji instead of zi)

# patrickf1/fzf.fish
set -gx fzf_preview_dir_cmd eza --all --color=always --icons # preview directories with exa

# -- gazorby/fish-abbreviation-tips
abbr gds 'git diff --stat'                                       # show changes as statistics
abbr ga 'git add .'                                              # add all changes in current directory and subdirectories
abbr gc 'git commit -m'                                          # commit with message
abbr gcm 'git commit -am'                                        # add all changes and commit with message
abbr gco 'git checkout'                                          # checkout to branch
abbr gwc 'git switch -c'                                         # checkout to new branch
abbr gws 'git switch'                                            # switch to branch
abbr gll 'git pull'                                              # pull changes from remote
abbr gps 'git push'                                              # push changes to remote
abbr gph 'git push -u origin $(git rev-parse --abbrev-ref HEAD)' # push changes to remote
abbr gst 'git status'                                            # show git status
abbr gsh 'git show'                                              # show git commit
abbr gshs 'git show --stat'                                      # show git commit with statistics


function abbr_update_keys_and_values
    __abbr_tips_init
end

abbr_update_keys_and_values # Update __ABBR_TIPS_KEYS and __ABBR_TIPS_VALUES


# ---------------- Keybindings -----------------
# ----------------------------------------------



# ---------------- References ------------------
# ----------------------------------------------
# - https://fishshell.com/docs/current/commands.html
# - https://fishshell.com/docs/current/cmds/set.html
# - https://fishshell.com/docs/3.2/fish_for_bash_users.html
# - https://github.com/ajeetdsouza/zoxide
