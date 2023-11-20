
function git-clone-dir() (

  # Show usage if no args passed
  if [ -z "$1" ]; then
    echo "
    $(basename "$0") REMOTE_URL REMOTE_BRANCH TARGET_DIR REPO_DIR1 REPO_DIR2 ...
    
    ex: git_clone_dir https://github.com/github/gitignore main local_dir community/Python community/Golang"
    exit 0
  fi

  remote="$1" localdir="$2" branch="$3" && shift 3

  git clone "$remote" --branch "$branch" --no-checkout "$localdir" --depth 1  # limit history

  cd "$localdir"

  # Loops over remaining args
  for i; do
    git sparse-checkout set "$i"
  done

  git checkout "$branch"
)
