function pass --wraps="pacman -Sl | cut -d' ' -f2 | grep": --description "alias pass pacman -Sl | cut -d' ' -f2 | grep":
  pacman -Sl | cut -d' ' -f2  # It allows you to search all available packages simply using 'pacsearch packagename': $argv
end
