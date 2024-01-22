function cpupowfreqinf --wraps='sudo cpupower frequency-info' --description 'alias cpupowfreqinf sudo cpupower frequency-info'
  sudo cpupower frequency-info $argv
        
end
