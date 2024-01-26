function dklsrm --wraps='docker container rm --force' --description 'alias dklsrm docker container rm --force'
  docker container rm --force $argv
        
end
