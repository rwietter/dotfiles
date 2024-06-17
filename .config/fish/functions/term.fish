function j
    __zoxide_z $argv
end


function ymp3 --wraps="yt-dlp --extract-audio --audio-format mp3 --audio-quality 0" --description ""
  yt-dlp --extract-audio --audio-format mp3 --audio-quality 0 $argv
end

function x --wraps='xsel -i -b' --description 'alias x xsel -i -b'
  xsel -i -b $argv
end

function wifi --wraps=nmtui-connect --description 'alias wifi nmtui-connect'
  nmtui-connect $argv
end

function whp --wraps='sudo netstat -tulpn | grep :7070' --description 'alias whp sudo netstat -tulpn | grep :7070'
  sudo netstat -tulpn | grep :7070 $argv
end

function trimls --wraps='lsblk --discard' --description 'alias trimls lsblk --discard'
  lsblk --discard $argv
end

function tlpt --wraps='sudo tlp-stat -t' --description 'alias tlpt sudo tlp-stat -t'
  sudo tlp-stat -t $argv
end

function tlpstat --wraps='sudo tlp-stat -s' --description 'alias tlpstat sudo tlp-stat -s'
  sudo tlp-stat -s $argv
end

function tlpstart --wraps='sudo tlp start' --description 'alias tlpstart sudo tlp start'
  sudo tlp start $argv
end

function tlpb --wraps='sudo tlp-stat -b' --description 'alias tlpb sudo tlp-stat -b'
  sudo tlp-stat -b $argv
end

function tlp --wraps='sudo tlp-stat' --description 'alias tlp sudo tlp-stat'
  sudo tlp-stat
end

function c --wraps="clear" --description 'clean terminal'
  clear
end

function cat --wraps='bat --color always --plain' --wraps=bat --description 'display file content in plain format'
  bat --color always --plain $argv
end

function clean --wraps='sudo rm -rf /var/cache/pacman/pkg/*.*' --description 'Remove all cached packages from pacman cache'
  sudo rm -rf /var/cache/pacman/pkg/*.* $argv
end

function cpuperf --wraps='sudo cpupower frequency-set -g performance' --description 'alias cpuperf sudo cpupower frequency-set -g performance'
  sudo cpupower frequency-set -g performance $argv
end

function cpupowfreqinf --wraps='sudo cpupower frequency-info' --description 'alias cpupowfreqinf sudo cpupower frequency-info'
  sudo cpupower frequency-info $argv
end

function cpusave --wraps='sudo cpupower frequency-set -g powersave' --description 'alias cpusave sudo cpupower frequency-set -g powersave'
  sudo cpupower frequency-set -g powersave $argv
end

function cpustats --wraps='sudo i7z' --description 'alias cpustats sudo i7z'
  sudo i7z $argv
end

function cv --wraps='xclip -sel clip' --description 'alias cv xclip -sel clip'
  xclip -sel clip $argv
end

function driver --wraps='sudo lspci -vnn' --description 'alias driver sudo lspci -vnn'
  sudo lspci -vnn $argv
end

function flac --description 'alias flac yt-dlp -x --audio-format flac'
  yt-dlp -x --audio-format flac $argv
end

function gpl --wraps='gpg --list-secret-keys --keyid-format LONG' --description 'alias gpl gpg --list-secret-keys --keyid-format LONG'
  gpg --list-secret-keys --keyid-format LONG $argv
end

function hardqualitydow --wraps='yt-dlp -f' --description 'alias hardqualitydow yt-dlp -f'
  yt-dlp -f $argv
end

function hardqualitysearch --wraps='yt-dlp -F' --description 'alias hardqualitysearch yt-dlp -F'
  yt-dlp -F $argv
end

function irmblocks --wraps='ipfs repo gc' --description 'alias irmblocks ipfs repo gc'
  ipfs repo gc $argv
end

function k9 --wraps='pkill -9' --description 'alias k9 pkill -9'
  pkill -9 $argv
end

function k9t --wraps='' --description ''
  cd $HOME/github/prod/kill-tabs && yarn start && cd -- $argv
end

function key --wraps="" --description ""
  xev | awk -F'[ )]+' '/^KeyPress/ { a[NR+2] } NR in a { printf \"%-3s %s\n\", $5, $8 }' $argv
end

function kl --wraps="ps -efw | grep php | grep -v grep | awk '{print $2}' | xargs kill $argv" --description "Will kill all php processes"
  ps -efw | grep php | grep -v grep | awk '{print $2}' | xargs kill $argv
        
end

function lsa --wraps='ls -lha | sort' --description 'alias lsa ls -lha | sort'
  ls -lha | sort $argv
end

function lsd --wraps='ls -lha | sort -r' --description 'alias lsd ls -lha | sort -r'
  ls -lha | sort -r $argv
end

function lt --wraps='ls --tree' --description 'alias lt ls --tree'
  ls --tree $argv
end

function m --wraps=mpd --description 'alias m mpd'
  mpd $argv
end

function mem --wraps='ps auxe --sort=-%mem | $HOME/Público/DSA/Languages/awk/mem.awk | head -n 15 | spin' --description 'alias mem ps auxe --sort=-%mem | $HOME/Público/DSA/Languages/awk/mem.awk | head -n 15 | spin'
  ps auxe --sort=-%mem | $HOME/Público/DSA/Languages/awk/mem.awk | head -n 15 | spin $argv
end

function tebi --wraps='dmesg | nc termbin.com 9999 ' --description 'alias tebi dmesg | nc termbin.com 9999 '
  dmesg | nc termbin.com 9999  $argv
end

function sudo --wraps=/bin/sudo --description 'alias sudo /bin/sudo'
  /bin/sudo $argv
end

function rss --wraps='nohup xdg-open http://localhost:7070/ &>/dev/null & disown' --description 'alias rss nohup xdg-open http://localhost:7070/ &>/dev/null & disown'
  nohup xdg-open http://localhost:7070/ &>/dev/null & disown $argv
end

function q --wraps=exit --description 'alias q exit'
  exit $argv
end

function pweb --wraps='lsof -i -n -P' --description 'alias pweb lsof -i -n -P'
  lsof -i -n -P $argv
end

function ppss --wraps='ps ac' --description 'alias ppss ps ac'
  ps ac $argv
end

function power --description 'alias power systemctl power'
  systemctl power $argv
end

function ncm --wraps=ncmpcpp --description 'alias ncm ncmpcpp'
  ncmpcpp $argv
end

function mu --wraps='sudo reflector --verbose -c Brazil --sort rate --save /etc/pacman.d/mirrorlist' --description 'alias mu sudo reflector --verbose -c Brazil --sort rate --save /etc/pacman.d/mirrorlist'
  sudo reflector --verbose -c Brazil --sort rate --save /etc/pacman.d/mirrorlist $argv
end

function mergevid--wraps='ffmpeg -loglevel error -i "$invideo" -i "$inaudio" -strict -2 -codec copy "$outputfile"' --description 'alias mergevid ffmpeg -loglevel error -i "$invideo" -i "$inaudio" -strict -2 -codec copy "$outputfile"'
  ffmpeg -loglevel error -i "$invideo" -i "$inaudio" -strict -2 -codec copy "$outputfile" $argv
end

function memd --wraps='ps -A --sort -rsz -o comm,pmem,pcpu|awk "NR<=20" | spin' --description 'alias memd ps -A --sort -rsz -o comm,pmem,pcpu|awk "NR<=20" | spin'
  ps -A --sort -rsz -o comm,pmem,pcpu|awk "NR<=20" | spin $argv
end
