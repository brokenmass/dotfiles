# This loads nvm
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

# Grab and install latest node version
alias updateNode="nvm install node --reinstall-packages-from=node"

# Local gulp shortcut
alias gulp="./node_modules/.bin/gulp"

# Edit httpd.conf
alias apacheEdit='sudo edit /etc/httpd/httpd.conf'

# Restart Apache
alias apacheRestart='sudo apachectl graceful'

# Edit /etc/hosts file
alias editHosts='sudo edit /etc/hosts'

# Tails HTTP error logs
alias herr='tail /var/log/httpd/error_log'

# Shows apache error logs
alias apacheLogs="less +F /var/log/apache2/error_log"

# Grabs headers from web page
httpHeaders () { /usr/bin/curl -I -L $@ ; }

# Download a web page and show info on what took time
httpDebug () { /usr/bin/curl $@ -o /dev/null -w "dns: %{time_namelookup} connect: %{time_connect} pretransfer: %{time_pretransfer} starttransfer: %{time_starttransfer} total: %{time_total}\n" ; }
