function pweb --wraps='lsof -i -n -P' --description 'alias pweb lsof -i -n -P'
  lsof -i -n -P $argv
        
end
