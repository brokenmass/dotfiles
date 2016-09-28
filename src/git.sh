# Removes local branches that are no longer on the remote
alias gitpurge="git fetch -p && git branch -vv | grep ': gone]' | grep -v '\[origin/master' | grep -v '\[origin/next-release' | awk '{print \$1;}' | xargs -n 1 git branch -D && git gc --aggressive"

# Set Default Editor (change to the editor of your choice)
# Disabled for the moment. Need ot decide if subl is better than vim for git diff
# export EDITOR=/usr/local/bin/subl

find_github_url () {
  echo `git remote -v | grep fetch | awk '{print $2}' | sed 's/git@/https:\/\//' | sed 's/com:/com\//' | sed 's/\.git//'`
}

find_git_branch() {
  local branch
  if branch=$(git rev-parse --abbrev-ref HEAD 2> /dev/null); then
    local status=$(git status --porcelain 2> /dev/null)
    if [[ "$branch" == "HEAD" ]]; then
      branch='detached*'
    fi

    if [[ "$status" != "" ]]; then
      git_branch="$txtred($branch)$txtrst "
    else
      git_branch="$txtgrn($branch)$txtrst "
    fi

  else
    git_branch=""
  fi
}

find_git_dirty() {
  local status=$(git status --porcelain 2> /dev/null)
  if [[ "$status" != "" ]]; then
    git_dirty='($branch)'
  else
    git_dirty=''
  fi
}

PROMPT_COMMAND="find_git_branch; $PROMPT_COMMAND"

gitrepo () {
  open -a /Applications/Google\ Chrome.app "$(find_github_url)";
}

gitpr () {
  local branch
  if branch=$(git rev-parse --abbrev-ref HEAD 2> /dev/null); then
    open -a /Applications/Google\ Chrome.app "$(find_github_url)/compare/next-release...$branch?expand=1";
  fi
}