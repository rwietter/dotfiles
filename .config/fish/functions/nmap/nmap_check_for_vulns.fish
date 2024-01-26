function nmap_check_for_vulns --wraps='sudo nmap -d --script=vulscan' --description 'alias nmap_check_for_vulns sudo nmap -d --script=vulscan'
  sudo nmap -d --script=vulscan $argv
        
end
