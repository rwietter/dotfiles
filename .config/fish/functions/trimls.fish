function trimls --wraps='lsblk --discard' --description 'alias trimls lsblk --discard'
  lsblk --discard $argv
        
end
