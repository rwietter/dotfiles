function nmap_traceroute --wraps='nmap -sP -PE -PS22,25,80 -PA21,23,80,3389 -PU -PO --traceroute ' --description 'alias nmap_traceroute nmap -sP -PE -PS22,25,80 -PA21,23,80,3389 -PU -PO --traceroute '
  nmap -sP -PE -PS22,25,80 -PA21,23,80,3389 -PU -PO --traceroute  $argv
        
end
