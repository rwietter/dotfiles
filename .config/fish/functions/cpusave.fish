function cpusave --wraps='sudo cpupower frequency-set -g powersave' --description 'alias cpusave sudo cpupower frequency-set -g powersave'
  sudo cpupower frequency-set -g powersave $argv
        
end
