function lsa --wraps='ls -lha | sort' --description 'alias lsa ls -lha | sort'
  ls -lha | sort $argv
        
end
