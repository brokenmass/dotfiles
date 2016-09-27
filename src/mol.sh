# Root folder of your Mol projects
export MOL_DIR=~/dev

# Finds and open any valid mol project
mol () {
  PROJECT_DIR=$(find $MOL_DIR -maxdepth 2 -mindepth 2 -type d -name "*$1*$2*" | head -1)
  echo -e "Opening Project \033[1;31m${PROJECT_DIR}\033[0m";
  cd ${PROJECT_DIR};
}

# Autocomplete for mol
_mol ()
{
  local cur prev opts
  COMPREPLY=()
  cur="${COMP_WORDS[COMP_CWORD]}"
  prev="${COMP_WORDS[COMP_CWORD-1]}"

  opts=$(find $MOL_DIR -maxdepth 2 -mindepth 2 -type d -name "*$cur*" | sed 's!.*/!!')
  COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
  return 0
}

# Setup mol autocomplete
complete -F _mol mol