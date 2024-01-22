function scanregular --wraps='sudo nmap -R -Pn -sC -sV --version-all -T5 -p- --open -v  -oN %y%m%d-target-name' --description 'alias scanregular sudo nmap -R -Pn -sC -sV --version-all -T5 -p- --open -v  -oN %y%m%d-target-name'
  sudo nmap -R -Pn -sC -sV --version-all -T5 -p- --open -v  -oN %y%m%d-target-name $argv
        
end
