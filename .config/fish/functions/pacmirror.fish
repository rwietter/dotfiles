function pacmirror --wraps='sudo reflector --country Brazil --verbose --latest 5 --sort rate --save /etc/pacman.d/mirrorlist' --description 'alias pacmirror sudo reflector --country Brazil --verbose --latest 5 --sort rate --save /etc/pacman.d/mirrorlist'
  sudo reflector --country Brazil --verbose --latest 5 --sort rate --save /etc/pacman.d/mirrorlist $argv
        
end
