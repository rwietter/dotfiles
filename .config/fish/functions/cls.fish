function cls --wraps='docker system prune --volumes' --description 'alias cls docker system prune --volumes'
  docker system prune --volumes $argv
        
end
