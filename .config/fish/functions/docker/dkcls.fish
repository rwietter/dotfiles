function dkcls --wraps='docker container ls' --wraps='docker container ls -a' --description 'alias dkcls docker container ls -a'
  docker container ls -a $argv
        
end
