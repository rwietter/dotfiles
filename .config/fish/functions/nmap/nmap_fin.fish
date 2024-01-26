function nmap_fin --wraps='nmap -sF -v' --description 'alias nmap_fin nmap -sF -v'
  nmap -sF -v $argv
        
end
