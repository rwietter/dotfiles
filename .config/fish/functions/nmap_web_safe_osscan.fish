function nmap_web_safe_osscan --wraps='sudo nmap -p 80,443 -O -v --osscan-guess --fuzzy ' --description 'alias nmap_web_safe_osscan sudo nmap -p 80,443 -O -v --osscan-guess --fuzzy '
  sudo nmap -p 80,443 -O -v --osscan-guess --fuzzy  $argv
        
end
