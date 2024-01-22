function clean --wraps='sudo rm -rf /var/cache/pacman/pkg/*.*' --description 'alias clean sudo rm -rf /var/cache/pacman/pkg/*.*'
  sudo rm -rf /var/cache/pacman/pkg/*.* $argv
        
end
