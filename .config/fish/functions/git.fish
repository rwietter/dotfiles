function gin --description 'Initialize git repository'
  git init $argv
end

function glf --description 'Log file following changes <file>'
  git log --pretty=format:'%C(yellow)%h %C(blue)%d %C(white)%s %C(cyan)%cn, %C(green)%cr' --graph --date=short --follow $argv
end