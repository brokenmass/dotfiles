# For use when booted into single-user
alias mountReadWrite='/sbin/mount -uw /'

# Recursively delete .DS_Store files
alias cleanupDS="find . -type f -name '*.DS_Store' -ls -delete"

# finderShowHidden:   Show hidden files in Finder
# finderHideHidden:   Hide hidden files in Finder
# http://ianlunn.co.uk/articles/quickly-showhide-hidden-files-mac-os-x-mavericks/
alias finderShowHidden='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias finderHideHidden='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

# Clean up LaunchServices to remove duplicates in the "Open With" menu
alias cleanupLS="/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user && killall Finder"

# Run a screensaver on the Desktop
alias screensaverDesktop='/System/Library/Frameworks/ScreenSaver.framework/Resources/ScreenSaverEngine.app/Contents/MacOS/ScreenSaverEngine -background'

# Opens current directory in MacOS Finder
alias f='open -a Finder ./'

# Cd's to frontmost window of MacOS Finder
cdf () {
  currFolderPath=$( /usr/bin/osascript <<EOT
    tell application "Finder"
      try
    set currFolder to (folder of the front window as alias)
      on error
    set currFolder to (path to desktop folder as alias)
      end try
      POSIX path of currFolder
    end tell
EOT
  )
  echo "cd to \"$currFolderPath\""
  cd "$currFolderPath"
}

# Opens any file in MacOS Quicklook Preview
ql () { qlmanage -p "$*" >& /dev/null; }

# Moves a file to the MacOS trash
trash () { command mv "$@" ~/.Trash ; }