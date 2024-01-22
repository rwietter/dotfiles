function pacrns --wraps='sudo pacman -Rns # Remove a specific package and all its dependencies and configurations' --description 'alias pacrns sudo pacman -Rns # Remove a specific package and all its dependencies and configurations'
  sudo pacman -Rns $argv # Remove a specific package and all its dependencies and configurations $argv
        
end
