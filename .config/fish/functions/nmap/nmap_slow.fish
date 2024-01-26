function nmap_slow --wraps='nmap -sS -v -T1' --description 'alias nmap_slow nmap -sS -v -T1'
  nmap -sS -v -T1 $argv
        
end
