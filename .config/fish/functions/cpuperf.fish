function cpuperf --wraps='sudo cpupower frequency-set -g performance' --description 'alias cpuperf sudo cpupower frequency-set -g performance'
  sudo cpupower frequency-set -g performance $argv
        
end
