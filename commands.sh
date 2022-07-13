#Mask 3/4 of a string with *
mask() printf '%s\n' ${(l[$#1][*])1:$#1*3/4}

#Create directory and auto dir into the new directory
mkcd() { mkdir -p $1; cd $1 }

#Dir into a directory and list its files
cls() { cd "$1"; ls;}

#Most used shell commands
topcmd() { history | awk '{ print $2 }' | sort | uniq -c |sort -rn | head }

#VSCode productivity function (Requires VScode shell installation)

#Open repo in VScode
open_repo() { cd "$1"; code . }

#Create py3 project , its virtual python env (Assuming python3 is configured into shell) and open in VScode
new_py_project() {
  mkdir -p $1; cd $1;
  python -m venv ".$1";
  code .
}


#Git productivity function

#Create a new branch with latest changes from master
newbranch() { git checkout master; git pull; git checkout -b $1; }

#Refresh and clean up branches that are merged to master
refreshbranch() { git checkout master; git fetch -p; git branch --merged | egrep -v "(^\*|master)" | xargs git branch -d }

#FZF style git diff
codediff() {
  preview="git diff $@ --color=always -- {-1}"
  git diff $@ --name-only | fzf -m --ansi --preview $preview
}

#Push current branch to remote
pushbranch() { git push -u origin HEAD; }

#Commit and Push branch to remote
commitpush() { git commit -m "$1" && git push -u origin HEAD }

#Search log in current branch with keyword
gitlog() {
  if [ -z "$1" ]; then
      echo 'Please specify search pattern.'
      return
  fi

  git log --name-status --grep="$1"
}

#Kubernetes productivity function

#Set k8 namespace
kubenv () { kubectl config set-context --current --namespace="$1" }
