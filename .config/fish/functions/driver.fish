function driver --wraps='sudo lspci -vnn' --description 'alias driver sudo lspci -vnn'
  sudo lspci -vnn $argv
        
end
