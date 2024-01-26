function dks --wraps='docker services' --description 'alias dks docker services'
  docker services $argv
end

function dkrm --wraps='docker rm' --description 'alias dkrm docker rm'
  docker rm $argv
end

function dkpss --wraps='bash $HOME/dkps' --description 'alias dkpss bash $HOME/dkps'
  bash $HOME/dkps $argv
end

function dkpsa --wraps='docker ps -a' --description 'alias dkpsa docker ps -a'
  docker ps -a $argv
end

function dkps --wraps='docker ps' --description 'alias dkps docker ps'
  docker ps $argv
end

function dkmx --wraps='docker-machine ssh' --description 'alias dkmx docker-machine ssh'
  docker-machine ssh $argv
end

function dkm --wraps=docker-machine --description 'alias dkm docker-machine'
  docker-machine $argv
end

function dklsrm --wraps='docker container rm --force' --description 'alias dklsrm docker container rm --force'
  docker container rm --force $argv
end

function dklf --wraps='docker logs -f' --description 'alias dklf docker logs -f'
  docker logs -f $argv
end

function dkl --wraps='docker logs' --description 'alias dkl docker logs'
  docker logs $argv
end

function dkirm --wraps='docker image rm --force' --description 'alias dkirm docker image rm --force'
  docker image rm --force $argv
end

function dkils --wraps='docker images ls' --description 'alias dkils docker images ls'
  docker images ls $argv
end

function dki --wraps='docker images' --description 'alias dki docker images'
  docker images $argv
end

function dkcls --wraps='docker container ls' --wraps='docker container ls -a' --description 'alias dkcls docker container ls -a'
  docker container ls -a $argv
end

function cls --wraps='docker system prune --volumes' --description 'alias cls docker system prune --volumes'
  docker system prune --volumes $argv
end
