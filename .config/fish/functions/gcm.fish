function gcm --wraps='git commit -am $argv' --description 'commit ammend'
  git commit -am $argv
end