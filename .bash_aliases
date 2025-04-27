# clipboard aliases
alias setclip='xclip -selection c'
alias getclip='xclip -selection c -o'

# zettelkasten: note this depends on obsidian binary/AppImage being available
# in $PATH
alias zk='obsidian.AppImage ~/Documents/obsidian'
alias crt='cool-retro-term'

function jwt_decode(){
    jq -R 'split(".") | .[1] | @base64d | fromjson |
      # you can replace the "localtime" with "gmttime" if that makes sense
      if .exp then (.expStr = (.exp | localtime | strftime("%Y-%m-%dT%H:%M:%S %Z"))) else . end |
      if .iat then (.iatStr = (.iat | localtime | strftime("%Y-%m-%dT%H:%M:%S %Z"))) else . end |
    .' <<< "$1"
}

# git stuff
alias ghooks='git config --unset core.hooksPath'
alias nohooks='git config core.hooksPath no-hooks'

# mia VPN stuff
alias nb='expressvpn disconnect || netbird up -m https://vpn.mialabs.net:33073 --admin-url https://vpn.mialabs.net:443 && sudo systemctl restart docker'
