function h
    history | percol | read cmd
    [ $cmd ]; and commandline $cmd
end
