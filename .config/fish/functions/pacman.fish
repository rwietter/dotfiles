function bck --wraps="pacman -Q | awk '{print $1}' > package_list.txt" --description "Create a list of all installed packages":
   pacman -Q | awk '{print $1}' > package_list.txt
end

function optim --wraps='sudo pacman -Sc && sudo pacman-optimize' --description 'Optimize pacman database'
  sudo pacman -Sc && sudo pacman-optimize $argv
end

function pacinsd --wraps='sudo pacman -S --asdeps' --description 'Will install a package and mark it as a dependency'
  sudo pacman -S --asdeps $argv
end

function pacloc --wraps='pacman -Qi' --description 'Will show you the local install location of a package'
  pacman -Qi $argv
end

function pacmirror --wraps='sudo reflector --country Brazil --verbose --latest 5 --sort rate --save /etc/pacman.d/mirrorlist' --description 'Update pacman mirrorlist'
  sudo reflector --country Brazil --verbose --latest 5 --sort rate --save /etc/pacman.d/mirrorlist $argv
end

function pacorf --wraps='sudo pacman -Rns $(pacman -Qtdq)' --description 'Create list of orphaned packages for removal'
  sudo pacman -Rns $(pacman -Qtdq)
end

function pacr --wraps='sudo pacman -R' --description 'Remove a specific package'
  sudo pacman -R $argv
end

function pacrdd --wraps='sudo pacman -Rdd' --description 'Remove a specific package without dependency check (use with caution)'
  sudo pacman -Rdd $argv
end

function pacrns --wraps='sudo pacman -Rns' --description 'Remove a specific package and all its dependencies and configurations'
  sudo pacman -Rns $argv
end

function pacup --wraps='sudo pacman -Syu' --description 'Synchronises repositories and updates if you have any update'
  sudo pacman -Syu $argv
end

function pas --wraps='sudo pacman -S # Install a specific package' --description 'Install a specific package'
  sudo pacman -S $argv
end

function pass --wraps="pacman -Sl | cut -d' ' -f2 | grep": --description "It allows you to search all available packages simply using 'pass <package name>'":
  pacman -Sl | cut -d' ' -f2 | grep $argv
end

function pkgs --wraps='echo pacman -Qqe | sort > qqe && pacman -Qmq | sort > qmq && comm -13 qqe qmq > pkgs && rm qqe qmq' --description 'Create list of all installed packages'
  echo pacman -Qqe | sort > qqe && pacman -Qmq | sort > qmq && comm -13 qqe qmq > pkgs && rm qqe qmq
end

function u --wraps='sudo haveged -w 1024; sudo pacman-key --init; sudo pacman-key --populate; sudo pacman-key --refresh-keys; sudo pkill haveged; sudo cp /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist.bak; sudo reflector --verbose --age 8 --fastest 128 --latest 64 --number 32 --sort rate --save /etc/pacman.d/mirrorlist; sudo pacman -Syy' --description 'Update pacman database and packages'
  sudo haveged -w 1024; sudo pacman-key --init; sudo pacman-key --populate; sudo pacman-key --refresh-keys; sudo pkill haveged; sudo cp /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist.bak; sudo reflector --verbose --age 8 --fastest 128 --latest 64 --number 32 --sort rate --save /etc/pacman.d/mirrorlist; sudo pacman -Syy $argv
end
