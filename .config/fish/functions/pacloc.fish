function pacloc --wraps='pacman -Qi' --description 'alias pacloc pacman -Qi'
  pacman -Qi $argv
        
end
