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

# ----------------- Zellij ---------------------
# ----------------------------------------------
# if status is-interactive
#     eval (zellij setup --generate-auto-start fish | string collect)
# end

# -------------- Theme Colors ------------------
# ----------------------------------------------
# fish_config theme choose "Dracula Official"   # Set theme


# ----------------- Prompt ---------------------
# ----------------------------------------------
set --universal pure_check_for_new_release false

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
alias ls "exa --icons -l -o --group-directories-first --color=always" # ls with icons

# ------------------ Paths ---------------------
# ----------------------------------------------
set -ag fish_user_paths "$HOME"/.npm-global/bin
set -ag fish_user_paths "$HOME"/.cargo/blink
set -ag fish_user_paths "$HOME"/.spicetify
set -ag fish_user_paths "$HOME"/Downloads/roc_nightly-linux_x86_64-2024-01-20-ebfcd71
set -ag fish_user_paths "$HOME"/.local/bin
set -ag fish_user_paths "$HOME"/go/bin
set -ag fish_user_paths "$HOME"/.local/bin/rwietter
# set -ag fish_user_paths "$HOME"/.local/bin/busybox

# --------------- Environments -----------------
# ----------------------------------------------
set -gx TERM wezterm                    # Set terminal to wezterm
set -gx EDITOR nvim                     # Set editor to nvim
set -gx VISUAL nvim                     # Set visual editor to nvim
set -gx BROWSER firefox                 # Set browser to firefox
set -gx LANG en_US.UTF-8                # Set language to pt_BR.UTF-8
set -gx LC_ALL en_US.UTF-8              # Set locale to pt_BR.UTF-8
set -Ux ABBR_TIPS_PROMPT "❱ \e[38;2;243;134;48;4;1m{{ .abbr }}\e[0m => \e[38;2;189;153;255;4;1m{{ .cmd }}\e[0m"

# ----------------- Functions ------------------
# ----------------------------------------------
# function fish_mode_prompt; end # Disable fish mode prompt (vi mode)

# ------------------ Plugins -------------------
# ----------------------------------------------
# -- kidonng/zoxide.fish
zoxide init fish | source    # like cd with superpowers

# -- patrickf1/fzf.fish
set -gx fzf_preview_dir_cmd eza --all --color=always --icons # preview directories with exa

# --------------- Abbreviations ----------------
# -- gazorby/fish-abbreviation-tips
source "$HOME"/.config/fish/plugins/abbr_tips.fish

function abbr_update_keys_and_values
     __abbr_tips_init
end
# abbr_update_keys_and_values # Update __ABBR_TIPS_KEYS and __ABBR_TIPS_VALUES

# -- Forgit plugin (interactive git commands)
set -U forgit_log flo              # git log
set -U forgit_diff fdf             # git diff
set -U forgit_add fad              # git add <file>         
set -U forgit_reset_head frh       # git reset HEAD <file>
set -U forgit_ignore fig           # git ignore ge 'git reset' nerate
set -U forgit_checkout_file fch    # git checkout <file>
set -U forgit_checkout_branch fcb  # git checkout <branch>
set -U forgit_branch_delete fbd    # git branch -D <branch>
set -U forgit_checkout_tag fct     # git checkout <tag>
set -U forgit_checkout_commit fco  # git checkout <commit>
set -U forgit_revert_commit frc    # git revert <commit>
set -U forgit_clean fclean         # git clean
set -U forgit_stash_show fss       # git stash show
set -U forgit_stash_push fsp       # git stash push
set -U forgit_cherry_pick fcp      # git cherry-pick
set -U forgit_rebase frb           # git rebase -i
set -U forgit_blame fbl            # git blame
set -U forgit_fixup ffu            # git commit --fixup && git rebase -i --autosquash

# ---------------- Keybindings -----------------
# ----------------------------------------------
bind -M insert \cb backward-kill-path-component  # Delete path component
bind -M insert \cz undo                          # Undo changes

# -- git
bind -M insert \cs state                         # Show the working tree status in compact way.
# bind -M insert \ca fad                           # Add file contents to the index.
bind -M insert \cd fbd                           # Delete a branch.

# -- zellij
bind -M insert \ea zellij toggle                 # Toggle zellij

# \c -> ctrl (case sensitive)
# \e -> esc | alt (case insensitive)

# ---------------- References ------------------
# ----------------------------------------------
# - [Fish for bash users](https://fishshell.com/docs/3.2/fish_for_bash_users.html)
# - [Zoxide](https://github.com/ajeetdsouza/zoxide)
# - [Fish Language](https://fishshell.com/docs/current/language.html)
# - [Commands](https://fishshell.com/docs/current/commands.html)
# - [Set](https://fishshell.com/docs/current/cmds/set.html)

# ------------------- Scala --------------------
set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME ; set -gx PATH $HOME/.cabal/bin /home/rwietter/.ghcup/bin $PATH # ghcup-env
# >>> coursier install directory >>>
set -gx PATH "$PATH:/home/rwietter/.local/share/coursier/bin"
# <<< coursier install directory <<<


# pnpm
set -gx PNPM_HOME "/home/rwietter/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end
