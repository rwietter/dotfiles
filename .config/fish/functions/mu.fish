function mu --wraps='sudo reflector --verbose -c Brazil --sort rate --save /etc/pacman.d/mirrorlist' --description 'alias mu sudo reflector --verbose -c Brazil --sort rate --save /etc/pacman.d/mirrorlist'
  sudo reflector --verbose -c Brazil --sort rate --save /etc/pacman.d/mirrorlist $argv
        
end
