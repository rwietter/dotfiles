function pacorf --wraps='sudo pacman -Rns $(pacman -Qtdq) # Create list of orphaned packages for removal' --description 'alias pacorf sudo pacman -Rns $(pacman -Qtdq) # Create list of orphaned packages for removal'
  sudo pacman -Rns $(pacman -Qtdq) # Create list of orphaned packages for removal $argv
        
end
