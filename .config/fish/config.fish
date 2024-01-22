# ...Configs
setxkbmap -model abnt2 -layout br -variant abnt2 # (set keyboard layout)
set fish_greeting # (disable fish greeting)
# starship init fish | source # (enable starship prompt)
# set --global hydro_symbol_prompt "λ" # (set new icon for prompt)

# ...Paths
fish_add_path -U ~/.npm-global/bin
fish_add_path ~/Downloads/roc_nightly-linux_x86_64-2024-01-20-ebfcd71

# ...Plugins
set fzf_preview_dir_cmd eza --all --color=always
set --universal zoxide_cmd j

# ...Refs
# - https://fishshell.com/docs/current/commands.html
