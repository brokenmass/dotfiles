# Quickly search for file
alias qfind="find . -name "

# Find file under the current directory
ff () { /usr/bin/find . -name "$@" ; }

# Find file whose name starts with a given string
ffs () { /usr/bin/find . -name "$@"'*' ; }

# Find file whose name ends with a given string
ffe () { /usr/bin/find . -name '*'"$@" ; }

# Search for a file using MacOS Spotlight's metadata
spotlight () { mdfind "kMDItemDisplayName == '$@'wc"; }

# Search using chrome
google() {
  gq=$(sed 's/ /+/g' <<<"$*")
  open -a /Applications/Google\ Chrome.app "http://www.google.com/search?q=$gq";
}
