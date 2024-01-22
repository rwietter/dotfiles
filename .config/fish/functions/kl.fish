function kl --wraps=ps\ -efw\ \|\ grep\ php\ \|\ grep\ -v\ grep\ \|\ awk\ \'\{print\ \$2\}\'\ \|\ xargs\ kill --description alias\ kl\ ps\ -efw\ \|\ grep\ php\ \|\ grep\ -v\ grep\ \|\ awk\ \'\{print\ \$2\}\'\ \|\ xargs\ kill
  ps -efw | grep php | grep -v grep | awk '{print $2}' | xargs kill $argv
        
end
