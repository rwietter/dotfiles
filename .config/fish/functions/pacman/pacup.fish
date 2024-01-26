function pacup --wraps='sudo pacman -Syu # Synchronises repositories and updates if you have any update' --description 'alias pacup sudo pacman -Syu # Synchronises repositories and updates if you have any update'
  sudo pacman -Syu $argv # Synchronises repositories and updates if you have any update $argv
end
