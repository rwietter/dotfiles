function whp --wraps='sudo netstat -tulpn | grep :7070' --description 'alias whp sudo netstat -tulpn | grep :7070'
  sudo netstat -tulpn | grep :7070 $argv
        
end
