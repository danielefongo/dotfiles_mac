alias events='icalbuddy -f -sc -ss "" -npn -nc -iep "title,datetime" -ps "| : |" -po "datetime,title" eventsToday+10'
alias tup='sudo networksetup -setsocksfirewallproxy Wi-Fi 127.0.0.1 9050 off; sudo networksetup -setsocksfirewallproxystate Wi-Fi on; tor'
alias toff='sudo networksetup -setsocksfirewallproxystate Wi-Fi off'

if [[ -f "$HOME/.custom_aliases" ]]; then
  source "$HOME/.custom_aliases"
fi
