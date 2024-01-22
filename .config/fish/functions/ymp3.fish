function ymp3 --wraps='yt-dlp --extract-audio --audio-format mp3 --audio-quality 0' --description 'alias ymp3 yt-dlp --extract-audio --audio-format mp3 --audio-quality 0'
  yt-dlp --extract-audio --audio-format mp3 --audio-quality 0 $argv
        
end
