function pacinsd --wraps='sudo pacman -S --asdeps' --description 'alias pacinsd sudo pacman -S --asdeps'
  sudo pacman -S --asdeps $argv
end
