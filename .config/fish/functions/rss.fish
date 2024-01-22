function rss --wraps='nohup xdg-open http://localhost:7070/ &>/dev/null & disown' --description 'alias rss nohup xdg-open http://localhost:7070/ &>/dev/null & disown'
  nohup xdg-open http://localhost:7070/ &>/dev/null & disown $argv
        
end
