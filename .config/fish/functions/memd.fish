function memd --wraps='ps -A --sort -rsz -o comm,pmem,pcpu|awk "NR<=20" | spin' --description 'alias memd ps -A --sort -rsz -o comm,pmem,pcpu|awk "NR<=20" | spin'
  ps -A --sort -rsz -o comm,pmem,pcpu|awk "NR<=20" | spin $argv
        
end
