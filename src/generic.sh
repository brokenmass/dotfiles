# Reload ~/.bash_profile
alias resource='source ~/.bash_profile'

# Preferred 'cp' implementation
alias cp='cp -iv'

# Preferred 'mv' implementation
alias mv='mv -iv'

# Preferred 'mkdir' implementation
alias mkdir='mkdir -pv'

# Preferred 'ls' implementation and 'sll' for reduced version
alias ll='ls -FGlAhp'
alias sll="ll | awk '{
  if(NR>1) printf(\"%2d %s %s \033[36m%6s\033[0m\033[1;34m%s\033[0m  %s\n\",
    \$6, \$7, \$8, substr(\$5, 0, length(\$5)-1), substr(\$5, length(\$5), 1), \$9)
  }'"

# Preferred 'less' implementation
alias less='less -FSRXc'

# Clear terminal display
alias c='clear'

# Find executables
alias which='type -all'

# Echo all executable Paths
alias path='echo -e ${PATH//:/\\n}'

# display bash options settings
alias show_options='shopt'

# Restore terminal settings when screwed up
alias fix_stty='stty sane'

# Make tab-completion case-insensitive
alias cicEnable='set completion-ignore-case On'

# Make tab-completion case-insensitive
alias cicDisable='set completion-ignore-case On'

# Pipe content to file on MacOS Desktop
alias DT='tee ~/Desktop/terminalOut.txt'

# Search manpage given in agument '1' for term given in argument '2' (case insensitive)
# displays paginated result with colored search terms and two lines surrounding each hit.
# Example: mans mplayer codec
mans () {
  man $1 | grep -iC2 --color=always $2 | less
}