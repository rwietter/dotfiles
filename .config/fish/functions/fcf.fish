function fcf --wraps='fc-list | grep -i' --description 'alias fcf fc-list | grep -i'
  fc-list | grep -i $argv
        
end
