function snmpscan --wraps='sudo nmap -P0 -v -sU -p 161 -oA snmp_scan' --description 'alias snmpscan sudo nmap -P0 -v -sU -p 161 -oA snmp_scan'
  sudo nmap -P0 -v -sU -p 161 -oA snmp_scan $argv
        
end
