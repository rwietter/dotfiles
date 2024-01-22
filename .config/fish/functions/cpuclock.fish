function cpuclock --wraps=watch\ grep\ \\\"cpu\ MHz\\\"\ /proc/cpuinfo --description alias\ cpuclock\ watch\ grep\ \\\"cpu\ MHz\\\"\ /proc/cpuinfo
  watch grep \"cpu MHz\" /proc/cpuinfo $argv
        
end
