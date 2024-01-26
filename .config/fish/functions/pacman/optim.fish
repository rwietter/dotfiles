function optim --wraps='sudo pacman -Sc && sudo pacman-optimize' --description 'alias optim sudo pacman -Sc && sudo pacman-optimize'
  sudo pacman -Sc && sudo pacman-optimize $argv
end
