function tlpstat --wraps='sudo tlp-stat -s' --description 'alias tlpstat sudo tlp-stat -s'
  sudo tlp-stat -s $argv
        
end
