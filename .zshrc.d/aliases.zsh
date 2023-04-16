
alias vim="nvim"

# Force tmux to assume that the shell is using 256 color terminal.
alias tmux="tmux -2"

# color less using pygments
pless() { pygmentize -f terminal256 -g -P style=monokai $* | less -FiXRM }

# date aliases

epoch() {
  date +"%s"
}

day() {
  date -d "@$(($1))"
}

day-milli() {
  date -d "@$(($1 / 1000))"
}

day-micro() {
  date -d "@$(($1 / 1000000))"
}

day-nano() {
  date -d "@$(($1 / 1000000000))"
}

day-diff() {
  $(( ($(date -d "$1" +%s) - $(date -d "$2" +%s) )/(60*60*24) ))
}
