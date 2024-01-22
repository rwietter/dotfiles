function geo --wraps='sudo nmap --traceroute --script traceroute-geolocation.nse -p 80' --description 'alias geo sudo nmap --traceroute --script traceroute-geolocation.nse -p 80'
  sudo nmap --traceroute --script traceroute-geolocation.nse -p 80 $argv
        
end
