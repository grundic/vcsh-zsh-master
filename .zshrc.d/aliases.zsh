
# Force tmux to assume that the shell is using 256 color terminal.
alias tmux="tmux -2"

# color less using pygments
pless() { pygmentize -f terminal256 -g -P style=monokai $* | less -FiXRM }
