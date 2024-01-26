function dkpsa --wraps='docker ps -a' --description 'alias dkpsa docker ps -a'
  docker ps -a $argv
        
end
