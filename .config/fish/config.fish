# -- configs
# ----------
set fish_greeting # disable fish greeting
set -g fish_history 10000 # Increase history size
set fish_complete_select_descriptions yes
set fish_complete_select_colorize yes


# -- Set cursor to block and blink
set -g fish_vi_force_cursor 1
set fish_cursor_default line blink
set fish_cursor_insert line blink
set fish_cursor_replace_one line blink
set fish_cursor_external line blink
set fish_cursor_visual line blink
set -x fish_key_bindings fish_vi_key_bindings # This enables vi keybindings

# -- Prompt settings
# ------------------

# -- Paths
# --------
fish_add_path -U ~/.npm-global/bin
fish_add_path -U ~/.cargo/bin
fish_add_path ~/Downloads/roc_nightly-linux_x86_64-2024-01-20-ebfcd71

# -- Environments
# ---------------
set -gx TERM wezterm
set -gx EDITOR nvim
set -gx VISUAL nvim
set -gx BROWSER firefox

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
fish_add_path /home/rwietter/.spicetify
