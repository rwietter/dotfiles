# -- configs
# ----------
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

# -- Prompt settings
# ------------------

# -- Paths
# --------
fish_add_path -U ~/.npm-global/bin # Add npm global bin to path
fish_add_path -U ~/.cargo/bin # Add cargo bin to path
fish_add_path -U ~/.spicetify # Add spicetify to path
fish_add_path -U ~/Downloads/roc_nightly-linux_x86_64-2024-01-20-ebfcd71 # Add roc to path

# -- Environments
# ---------------
set -gx TERM wezterm # Set terminal to wezterm
set -gx EDITOR nvim # Set editor to nvim
set -gx VISUAL nvim # Set visual editor to nvim
set -gx BROWSER firefox # Set browser to firefox

# -- Functions
# ------------
function fish_mode_prompt; end # Disable fish mode prompt

# -- Plugins
# ----------
zoxide init fish | source # like cd with superpowers
set fzf_preview_dir_cmd eza --all --color=always # preview directories with exa
set --universal zoxide_cmd j # jump to directory with zoxide (use j instead of z and ji instead of zi)

# -- References
# ----------
# - https://fishshell.com/docs/current/commands.html
# - https://fishshell.com/docs/current/cmds/set.html
# - https://fishshell.com/docs/3.2/fish_for_bash_users.html
# - https://github.com/ajeetdsouza/zoxide
