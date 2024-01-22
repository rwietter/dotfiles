function lsd --wraps='ls -lha | sort -r' --description 'alias lsd ls -lha | sort -r'
  ls -lha | sort -r $argv
        
end
