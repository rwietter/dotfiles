function pkgs --wraps='Create list of all installed packages' --description 'Create list of all installed packages'
  echo pacman -Qqe | sort > qqe && pacman -Qmq | sort > qmq && comm -13 qqe qmq > pkgs && rm qqe qmq
end

