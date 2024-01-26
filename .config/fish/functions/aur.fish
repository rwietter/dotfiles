function pr --wraps='paru -R' --description 'alias yr paru -R'
  paru -R $argv
end

function prdd --wraps='paru -Rdd' --description 'alias prdd paru -Rdd'
  paru -Rdd $argv
end

function prns --wraps='yay -Rns' --description 'alias prns paru -Rns'
  paru -Rns $argv
end

function prs --wraps='paru -S' --description 'alias prs paru -S'
  paru -S $argv
end

function prsy --wraps='paru -Syua' --description 'alias prsy paru -Syua'
  paru -Syua $argv
end
