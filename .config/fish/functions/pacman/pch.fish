function pch --wraps=pacman\ -Sl\ \|\ cut\ -d\'\ \'\ -f2\ \|\ grep --description alias\ pch\ pacman\ -Sl\ \|\ cut\ -d\'\ \'\ -f2\ \|\ grep
  pacman -Sl | cut -d' ' -f2 | grep $argv
        
end
