# ---------------- Settings --------------------
# ----------------------------------------------
set -g fish_greeting # disable fish greeting
set -g fish_history 10000 # Increase history size
set -g fish_complete_select_descriptions yes # Show descriptions for completions
set -g fish_complete_select_colorize yes # Colorize completions
set -g fish_autosuggestion_enabled 1 # Enable autosuggestions

fish_config theme choose "Dracula Official" # Set theme

set -g fish_vi_force_cursor 1 # Force cursor to be line
set fish_cursor_default line blink # Set cursor to line and blink
set fish_cursor_insert line blink # Set cursor to line and blink in insert mode
set fish_cursor_replace_one line blink # Set cursor to line and blink in replace mode
set fish_cursor_external line blink # Set cursor to line and blink in external mode
set fish_cursor_visual line blink # Set cursor to line and blink in visual mode
set -x fish_key_bindings fish_vi_key_bindings # This enables vi keybindings

set -q fisher_path; or set -Ux fisher_path "$HOME/.config/fish"


# ----------------- Prompt ---------------------
# ----------------------------------------------

# ----------------- Source ---------------------
# ----------------------------------------------
function source_aliases # Source aliases
    for file in (find ~/.config/fish/functions -type f -name '*.fish')
        source $file
    end
end

source_aliases

# ----------------- Aliases --------------------
# ----------------------------------------------
alias ls "exa --icons --group-directories-first --color=always" # ls with icons

# ------------------ Paths ---------------------
# ----------------------------------------------
fish_add_path -U ~/.npm-global/bin # Add npm global bin to path
fish_add_path -U ~/.cargo/bin # Add cargo bin to path
fish_add_path -U ~/.spicetify # Add spicetify to path
fish_add_path -U ~/Downloads/roc_nightly-linux_x86_64-2024-01-20-ebfcd71 # Add roc to path


# --------------- Environments -----------------
# ----------------------------------------------
set -gx TERM wezterm # Set terminal to wezterm
set -gx EDITOR nvim # Set editor to nvim
set -gx VISUAL nvim # Set visual editor to nvim
set -gx BROWSER firefox # Set browser to firefox
set -gx LANG pt_BR.UTF-8 # Set language to pt_BR.UTF-8
set -gx LC_ALL pt_BR.UTF-8 # Set locale to pt_BR.UTF-8
set -U ABBR_TIPS_PROMPT "❱ \e[38;2;243;134;48;4;1m{{ .abbr }}\e[0m => \e[38;2;189;153;255;4;1m{{ .cmd }}\e[0m" # Set abbr tips prompt

# ----------------- Functions ------------------
# ----------------------------------------------
function fish_mode_prompt; end # Disable fish mode prompt (vi mode)


# ------------------ Plugins -------------------
# ----------------------------------------------

# kidonng/zoxide.fish
zoxide init fish | source # like cd with superpowers
set --universal zoxide_cmd j # jump to directory with zoxide (use j instead of z and ji instead of zi)

# patrickf1/fzf.fish
set fzf_preview_dir_cmd eza --all --color=always # preview directories with exa

# -- gazorby/fish-abbreviation-tips
# abbr --erase (abbr --list)
abbr --add gds 'git diff --stat' # show changes as statistics
abbr --add ga 'git add .' # add all changes in current directory and subdirectories
abbr --add gc 'git commit -m' # commit with message
abbr --add gcm 'git commit -am' # add all changes and commit with message
abbr --add gco 'git checkout' # checkout to branch
abbr --add gwc 'git switch -c' # checkout to new branch
abbr --add gws 'git switch' # switch to branch
abbr --add gll 'git pull' # pull changes from remote
abbr --add gps 'git push' # push changes to remote
abbr --add gph 'git push -u origin $(git rev-parse --abbrev-ref HEAD)' # push changes to remote
abbr --add gst 'git status' # show git status
abbr --add gsh 'git show' # show git commit
abbr --add gshs 'git show --stat' # show git commit with statistics

# This will update the keys and values, so that tips and abbreviations are displayed correctly.
function abbr_update_keys_and_values
    __abbr_tips_init
end

abbr_update_keys_and_values


# ---------------- Keybindings -----------------
# ----------------------------------------------

# ---------------- References ------------------
# ----------------------------------------------
# - https://fishshell.com/docs/current/commands.html
# - https://fishshell.com/docs/current/cmds/set.html
# - https://fishshell.com/docs/3.2/fish_for_bash_users.html
# - https://github.com/ajeetdsouza/zoxide
