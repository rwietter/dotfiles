function pass --wraps=pacman\ -Sl\ \|\ cut\ -d\'\ \'\ -f2\ \|\ grep\ \ \#\ It\ allows\ you\ to\ search\ all\ available\ packages\ simply\ using\ \'pacsearch\ packagename\': --description alias\ pass\ pacman\ -Sl\ \|\ cut\ -d\'\ \'\ -f2\ \|\ grep\ \ \#\ It\ allows\ you\ to\ search\ all\ available\ packages\ simply\ using\ \'pacsearch\ packagename\':
  pacman -Sl | cut -d' ' -f2 | grep  # It allows you to search all available packages simply using 'pacsearch packagename': $argv
        
end
