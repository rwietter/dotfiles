function nmap_ping_through_firewall --wraps='nmap -PS -PA' --description 'alias nmap_ping_through_firewall nmap -PS -PA'
  nmap -PS -PA $argv
        
end
