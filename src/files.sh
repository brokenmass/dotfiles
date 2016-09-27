# Set default blocksize for ls, df, du
# from this: http://hints.macworld.com/comment.php?mode=view&cid=24491
export BLOCKSIZE=1k

# Count of non-hidden files in current dir
alias numFiles='echo $(ls -1 | wc -l)'

# Creates a file of 1mb size (all zeros)
alias make1mb='mkfile 1m ./1MB.dat'

# Creates a file of 5mb size (all zeros)
alias make5mb='mkfile 5m ./5MB.dat'

# Creates a file of 10mb size (all zeros)
alias make10mb='mkfile 10m ./10MB.dat'

# Opens any file in sublime editor
alias edit='subl'

# To create a ZIP archive of a folder
zipf () { zip -r "$1".zip "$1" ; }

# Extract most know archives with one command
extract () {
  if [ -f $1 ] ; then
    case $1 in
    *.tar.bz2)   tar xjf $1     ;;
    *.tar.gz)    tar xzf $1     ;;
    *.bz2)       bunzip2 $1     ;;
    *.rar)       unrar e $1     ;;
    *.gz)        gunzip $1      ;;
    *.tar)       tar xf $1      ;;
    *.tbz2)      tar xjf $1     ;;
    *.tgz)       tar xzf $1     ;;
    *.zip)       unzip $1       ;;
    *.Z)         uncompress $1  ;;
    *.7z)        7z x $1        ;;
    *)     echo "'$1' cannot be extracted via extract()" ;;
     esac
   else
     echo "'$1' is not a valid file"
   fi
}