function nmap_check_for_firewall --wraps='sudo nmap -sA -p1-65535 -v -T4' --description 'alias nmap_check_for_firewall sudo nmap -sA -p1-65535 -v -T4'
  sudo nmap -sA -p1-65535 -v -T4 $argv
end

function nmap_check_for_vulns --wraps='sudo nmap -d --script=vulscan' --description 'alias nmap_check_for_vulns sudo nmap -d --script=vulscan'
  sudo nmap -d --script=vulscan $argv
end

function nmap_detect_versions --wraps='sudo nmap -sV -p1-65535 -O --osscan-guess -T4 -Pn' --description 'alias nmap_detect_versions sudo nmap -sV -p1-65535 -O --osscan-guess -T4 -Pn'
  sudo nmap -sV -p1-65535 -O --osscan-guess -T4 -Pn $argv
end

function nmap_fast --wraps='nmap -F -T5 --version-light --top-ports 300' --description 'alias nmap_fast nmap -F -T5 --version-light --top-ports 300'
  nmap -F -T5 --version-light --top-ports 300 $argv
end

function nmap_fin --wraps='nmap -sF -v' --description 'alias nmap_fin nmap -sF -v'
  nmap -sF -v $argv
end

function nmap_full_udp --wraps='nmap -sS -sU -T4 -A -v -PE -PS22,25,80 -PA21,23,80,443,3389 ' --description 'alias nmap_full_udp nmap -sS -sU -T4 -A -v -PE -PS22,25,80 -PA21,23,80,443,3389 '
  nmap -sS -sU -T4 -A -v -PE -PS22,25,80 -PA21,23,80,443,3389  $argv
end

function nmap_full_with_scripts --wraps='sudo nmap -sS -sU -T4 -A -v -PE -PP -PS21,22,23,25,80,113,31339 -PA80,113,443,10042 -PO --script all ' --description 'alias nmap_full_with_scripts sudo nmap -sS -sU -T4 -A -v -PE -PP -PS21,22,23,25,80,113,31339 -PA80,113,443,10042 -PO --script all '
  sudo nmap -sS -sU -T4 -A -v -PE -PP -PS21,22,23,25,80,113,31339 -PA80,113,443,10042 -PO --script all  $argv
end

function nmap_full --wraps='nmap -sS -T4 -PE -PP -PS80,443 -PY -g 53 -A -p1-65535 -v' --description 'alias nmap_full nmap -sS -T4 -PE -PP -PS80,443 -PY -g 53 -A -p1-65535 -v'
  nmap -sS -T4 -PE -PP -PS80,443 -PY -g 53 -A -p1-65535 -v $argv
end

function nmap_ping_through_firewall --wraps='nmap -PS -PA' --description 'alias nmap_ping_through_firewall nmap -PS -PA'
  nmap -PS -PA $argv
end

function nmap_slow --wraps='nmap -sS -v -T1' --description 'alias nmap_slow nmap -sS -v -T1'
  nmap -sS -v -T1 $argv
end

function nmap_traceroute --wraps='nmap -sP -PE -PS22,25,80 -PA21,23,80,3389 -PU -PO --traceroute ' --description 'alias nmap_traceroute nmap -sP -PE -PS22,25,80 -PA21,23,80,3389 -PU -PO --traceroute '
  nmap -sP -PE -PS22,25,80 -PA21,23,80,3389 -PU -PO --traceroute  $argv
end

function nmap_web_safe_osscan --wraps='sudo nmap -p 80,443 -O -v --osscan-guess --fuzzy ' --description 'alias nmap_web_safe_osscan sudo nmap -p 80,443 -O -v --osscan-guess --fuzzy '
  sudo nmap -p 80,443 -O -v --osscan-guess --fuzzy  $argv
end

function nmapemail --wraps='sudo nmap -Pn -p80 --script http-google-email' --description 'alias nmapemail sudo nmap -Pn -p80 --script http-google-email'
  sudo nmap -Pn -p80 --script http-google-email $argv
end

function nmaplf --wraps='nmap --iflist' --description 'alias nmaplf nmap --iflist'
  nmap --iflist $argv
end

function nmapopen --wraps='nmap --open' --description 'alias nmapopen nmap --open'
  nmap --open $argv
end

function scanregular --wraps='sudo nmap -R -Pn -sC -sV --version-all -T5 -p- --open -v  -oN %y%m%d-target-name' --description 'alias scanregular sudo nmap -R -Pn -sC -sV --version-all -T5 -p- --open -v  -oN %y%m%d-target-name'
  sudo nmap -R -Pn -sC -sV --version-all -T5 -p- --open -v  -oN %y%m%d-target-name $argv
end

function snmpscan --wraps='sudo nmap -P0 -v -sU -p 161 -oA snmp_scan' --description 'alias snmpscan sudo nmap -P0 -v -sU -p 161 -oA snmp_scan'
  sudo nmap -P0 -v -sU -p 161 -oA snmp_scan $argv
end

function geo --wraps='sudo nmap --traceroute --script traceroute-geolocation.nse -p 80' --description 'alias geo sudo nmap --traceroute --script traceroute-geolocation.nse -p 80'
  sudo nmap --traceroute --script traceroute-geolocation.nse -p 80 $argv
end
