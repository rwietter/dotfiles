function bck --wraps=\ pacman\ -Q\ \|\ awk\ \'\{print\ \$1\}\'\ \>\ package_list.txt --description alias\ bck\ \ pacman\ -Q\ \|\ awk\ \'\{print\ \$1\}\'\ \>\ package_list.txt
   pacman -Q | awk '{print $1}' > package_list.txt $argv
        
end
