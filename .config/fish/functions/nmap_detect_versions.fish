function nmap_detect_versions --wraps='sudo nmap -sV -p1-65535 -O --osscan-guess -T4 -Pn' --description 'alias nmap_detect_versions sudo nmap -sV -p1-65535 -O --osscan-guess -T4 -Pn'
  sudo nmap -sV -p1-65535 -O --osscan-guess -T4 -Pn $argv
        
end
