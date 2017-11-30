#
# Refresh environment variables from tmux and exports them.
#
if [ -n "$TMUX" ]; then
  function refresh {
    export $(tmux show-environment | grep "^SSH_AUTH_SOCK")
    export $(tmux show-environment | grep "^DISPLAY")
  }
else
  function refresh { }
fi

function preexec {
    refresh
}
