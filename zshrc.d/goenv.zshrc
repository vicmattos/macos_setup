
eval "$(goenv init -)"

path=(
  "$GOROOT/bin"
  $path
  "$GOPATH/bin"
)