function pas --wraps='sudo pacman -S # Install a specific package' --description 'alias pas sudo pacman -S # Install a specific package'
  sudo pacman -S $argv
        
end
