function nmap_full_udp --wraps='nmap -sS -sU -T4 -A -v -PE -PS22,25,80 -PA21,23,80,443,3389 ' --description 'alias nmap_full_udp nmap -sS -sU -T4 -A -v -PE -PS22,25,80 -PA21,23,80,443,3389 '
  nmap -sS -sU -T4 -A -v -PE -PS22,25,80 -PA21,23,80,443,3389  $argv
        
end
