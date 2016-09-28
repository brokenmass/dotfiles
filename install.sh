#!/usr/bin/env bash
set -e

if [ -f ~/.bash_profile ]; then
  echo "Backing Up current .bash_profile"
  mkdir -p ~/bash_profile_backups
  CDATE=`date +%Y-%m-%d_%H:%M:%S`
  cp ~/.bash_profile ~/bash_profile_backups/$CDATE
  echo "File backed up to: ~/bash_profile_backups/$CDATE"
fi


PROJECT_DIR=$(pwd)
cat <<< "
export BASH_PROFILE_DIR=$PROJECT_DIR
source \$BASH_PROFILE_DIR/main.sh
" > ~/.bash_profile

vi config.sh