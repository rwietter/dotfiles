function dklf --wraps='docker logs -f' --description 'alias dklf docker logs -f'
  docker logs -f $argv
        
end
