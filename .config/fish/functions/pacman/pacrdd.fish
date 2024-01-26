function pacrdd --wraps='sudo pacman -Rdd' --description 'alias pacrdd sudo pacman -Rdd'
  sudo pacman -Rdd $argv
end
