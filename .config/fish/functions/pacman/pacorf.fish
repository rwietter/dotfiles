function pacorf --wraps='sudo pacman -Rns $(pacman -Qtdq)' --description 'Create list of orphaned packages for removal'
  sudo pacman -Rns $(pacman -Qtdq)
end
