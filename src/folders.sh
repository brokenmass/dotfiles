# Go Home
alias ~="cd ~"

# Go back 1 directory level (for fast typers)
alias cd..='cd ../'

# Go back 1 directory level
alias ..='cd ../'

# Go back 2 directory levels
alias ...='cd ../../'

# Go back 3 directory levels
alias .3='cd ../../../'

# Go back 4 directory levels
alias .4='cd ../../../../'

# Go back 5 directory levels
alias .5='cd ../../../../../'

# Go back 6 directory levels
alias .6='cd ../../../../../../'

# Full Recursive Directory Listing [Tree view]
alias lr='ls -GR | grep --color=always ":$" | sed -e '\''s/:$//'\'' -e '\''s/[^-][^\/]*\//--/g'\'' -e '\''s/^/   /'\'' -e '\''s/-/|/'\'' '

# Full Recursive Directory Listing with Access Times
alias lrat='ls -luGR'

# Always list directory contents upon 'cd' and load nvm if .nvmrc is present
cd () {
  builtin cd "$@";
  sll;
  if [[ -f .nvmrc && -r .nvmrc ]]; then
    nvm use || nvm install
  fi
}

mcd () { mkdir -p "$1" && cd "$1"; }               # Makes new Dir and jumps inside