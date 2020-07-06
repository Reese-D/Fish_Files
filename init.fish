alias remove_dead_local="git fetch --prune && git branch -vv | grep ': gone]' | awk '{print $1}' | xargs git branch -D"

funcsave remove_dead_local