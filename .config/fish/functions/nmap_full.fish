function nmap_full --wraps='nmap -sS -T4 -PE -PP -PS80,443 -PY -g 53 -A -p1-65535 -v' --description 'alias nmap_full nmap -sS -T4 -PE -PP -PS80,443 -PY -g 53 -A -p1-65535 -v'
  nmap -sS -T4 -PE -PP -PS80,443 -PY -g 53 -A -p1-65535 -v $argv
        
end
