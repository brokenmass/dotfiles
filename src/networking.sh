# Public facing IP Address
alias myip='curl ifconfig.co'

# Show all open TCP/IP sockets
alias netCons='lsof -i'

# Flush out the DNS Cache
alias flushDNS='dscacheutil -flushcache'

# Display open sockets
alias lsock='sudo /usr/sbin/lsof -i -P'

# Display only open UDP sockets
alias lsockU='sudo /usr/sbin/lsof -nP | grep UDP'

# Display only open TCP sockets
alias lsockT='sudo /usr/sbin/lsof -nP | grep TCP'

# Get info on connections for en0
alias ipInfo0='ipconfig getpacket en0'

# Get info on connections for en1
alias ipInfo1='ipconfig getpacket en1'

# All listening connections
alias openPorts='sudo lsof -i | grep LISTEN'

# All ipfw rules inc/ blocked IPs
alias showBlocked='sudo ipfw list'

# Display useful host related informaton
# TODO: this needs love
ii() {
  echo -e "\nYou are logged on ${RED}$HOST"
  echo -e "\nAdditionnal information:$NC " ; uname -a
  echo -e "\n${RED}Users logged on:$NC " ; w -h
  echo -e "\n${RED}Current date :$NC " ; date
  echo -e "\n${RED}Machine stats :$NC " ; uptime
  echo -e "\n${RED}Current network location :$NC " ; scselect
  echo -e "\n${RED}Public facing IP Address :$NC " ; myip
  #echo -e "\n${RED}DNS Configuration:$NC " ; scutil --dns
  echo
}