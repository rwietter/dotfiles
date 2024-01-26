function dkirm --wraps='docker image rm --force' --description 'alias dkirm docker image rm --force'
  docker image rm --force $argv
        
end
