function mem --wraps='ps auxe --sort=-%mem | $HOME/Público/DSA/Languages/awk/mem.awk | head -n 15 | spin' --description 'alias mem ps auxe --sort=-%mem | $HOME/Público/DSA/Languages/awk/mem.awk | head -n 15 | spin'
  ps auxe --sort=-%mem | $HOME/Público/DSA/Languages/awk/mem.awk | head -n 15 | spin $argv
        
end
