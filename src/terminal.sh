# Add color to terminal
# from http://osxdaily.com/2012/02/21/add-color-to-the-terminal-in-mac-os-x/
# and https://developer.apple.com/library/mac/documentation/Darwin/Reference/ManPages/man1/ls.1.html
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

# Iterm2 shell integration
test -e ${HOME}/.iterm2_shell_integration.bash && source ${HOME}/.iterm2_shell_integration.bash

# Bash completion
if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi

# Change Prompt
export PS1="________________________________________________________________________________\n| \[$txtcyn\]\w\[$txtrst\] \$git_branch(\u) \n| => "
export PS2="| => "