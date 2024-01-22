function pkglist --wraps='comm -13 <(pacman -Qmq | sort) <(pacman -Qqe | sort) > pkglist # Create list of all installed packages' --description 'alias pkglist comm -13 <(pacman -Qmq | sort) <(pacman -Qqe | sort) > pkglist # Create list of all installed packages'
  comm -13 <(pacman -Qmq | sort) <(pacman -Qqe | sort) > $argv # Create list of all installed packages $argv
        
end
