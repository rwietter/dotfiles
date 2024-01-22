function mergevidaaaaud --wraps='ffmpeg -loglevel error -i "$invideo" -i "$inaudio" -strict -2 -codec copy "$outputfile"' --description 'alias mergevidaaaaud ffmpeg -loglevel error -i "$invideo" -i "$inaudio" -strict -2 -codec copy "$outputfile"'
  ffmpeg -loglevel error -i "$invideo" -i "$inaudio" -strict -2 -codec copy "$outputfile" $argv
        
end
