function nmap_check_for_firewall --wraps='sudo nmap -sA -p1-65535 -v -T4' --description 'alias nmap_check_for_firewall sudo nmap -sA -p1-65535 -v -T4'
  sudo nmap -sA -p1-65535 -v -T4 $argv
        
end
