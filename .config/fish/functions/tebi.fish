function tebi --wraps='dmesg | nc termbin.com 9999 ' --description 'alias tebi dmesg | nc termbin.com 9999 '
  dmesg | nc termbin.com 9999  $argv
end
