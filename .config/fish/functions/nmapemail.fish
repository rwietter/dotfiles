function nmapemail --wraps='sudo nmap -Pn -p80 --script http-google-email' --description 'alias nmapemail sudo nmap -Pn -p80 --script http-google-email'
  sudo nmap -Pn -p80 --script http-google-email $argv
        
end
