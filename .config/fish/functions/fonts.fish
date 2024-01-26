function fcc --wraps='fc-cache -fv' --description 'alias fcc fc-cache -fv'
  fc-cache -fv $argv
end

function fcf --wraps='fc-list | grep -i' --description 'alias fcf fc-list | grep -i'
  fc-list | grep -i $argv
end
