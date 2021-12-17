
# Init 

defaults write com.apple.Finder AppleShowAllFiles true
git config --global pull.rebase false
git config --global fetch.prune true

#     Terminal functions    #
#############################
function refresh() {
  source ~/.zshrc
}

#      Dev Functions      # 
###########################

function dderiv() {
  rm -rf ~/Library/Developer/Xcode/DerivedData
  echo "Removed Xcode cache in ~/Library/Developer/Xcode/DerivedData"
}

#      Git Functions      #
############################

function gstat() {
  git status
}

# gdf: Git Diff - Diffs either all changes, or only the files provided
function gdf() {
  git df $@ # $@ gives all input arguments separated by spaces
}

# gdfc: Git Diff Cached: Diffs the staged files
function gdfc() {
  git diff --cached
}

function gall() {
  git add --all
}

function gcheck() {
  git checkout $1
}

function gcom() {
  git commit -m $1
}

function gresh() {
  git reset --hard
}

# gub: Git Update Branch - pull latest changes of current branch to origin
function gub() {
  git pull origin $(git rev-parse --abbrev-ref HEAD)
}
# gpb: Git Push Branch - push the branch to remote
function gpb() {
  git push origin $(git rev-parse --abbrev-ref HEAD)
}

# Create alias for lazygit
alias lz=lazygit