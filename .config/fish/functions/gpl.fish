function gpl --wraps='gpg --list-secret-keys --keyid-format LONG' --description 'alias gpl gpg --list-secret-keys --keyid-format LONG'
  gpg --list-secret-keys --keyid-format LONG $argv
        
end
