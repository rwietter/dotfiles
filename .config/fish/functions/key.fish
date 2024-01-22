function key --wraps=xev\ \|\ awk\ -F\'\[\ \)\]+\'\ \'/^KeyPress/\ \{\ a\[NR+2\]\ \}\ NR\ in\ a\ \{\ printf\ \\\"\%-3s\ \%s\\n\\\",\ \$5,\ \$8\ \}\' --description alias\ key\ xev\ \|\ awk\ -F\'\[\ \)\]+\'\ \'/^KeyPress/\ \{\ a\[NR+2\]\ \}\ NR\ in\ a\ \{\ printf\ \\\"\%-3s\ \%s\\n\\\",\ \$5,\ \$8\ \}\'
  xev | awk -F'[ )]+' '/^KeyPress/ { a[NR+2] } NR in a { printf \"%-3s %s\n\", $5, $8 }' $argv
        
end
