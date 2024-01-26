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


# ----------------- Aliases --------------------
# ----------------------------------------------
alias ls "exa --icons --group-directories-first --color=always" # ls with icons
alias cm "git commit -am" $argv # git diff with --staged as argument

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
set -gx LANG en_US.UTF-8 # Set language to en_US.UTF-8
set -gx LC_ALL en_US.UTF-8 # Set locale to en_US.UTF-8
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
abbr -a g 'git diff --stat' $argv # git diff with --staged as argument
abbr -a a 'git add .' # git add with . as argument add just the current directory
abbr -a c 'git commit -m' # git commit with -m as argument
abbr -a cm 'git commit -am' # git commit with -am as argument
abbr -a w 'git switch' # git switch with -c as argument
abbr -a d 'docker run -it' # docker ps with -a as argument

# ---------------- Keybindings -----------------
# ----------------------------------------------

# ---------------- References ------------------
# ----------------------------------------------
# - https://fishshell.com/docs/current/commands.html
# - https://fishshell.com/docs/current/cmds/set.html
# - https://fishshell.com/docs/3.2/fish_for_bash_users.html
# - https://github.com/ajeetdsouza/zoxide
