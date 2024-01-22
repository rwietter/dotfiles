function nmap_fast --wraps='nmap -F -T5 --version-light --top-ports 300' --description 'alias nmap_fast nmap -F -T5 --version-light --top-ports 300'
  nmap -F -T5 --version-light --top-ports 300 $argv
        
end
