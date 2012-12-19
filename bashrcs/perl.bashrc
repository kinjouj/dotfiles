function vimp {
    vim `perldoc -l $1`
}

function pcd {
    cd `perldoc -l $1 | xargs dirname`
}

complete -C perldoc-complete -o nospace vimp
complete -C perldoc-complete -o nospace pcd
