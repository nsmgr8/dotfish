function __set_extra_path
    if [ -d $1 ]
        set PATH $PATH $1
    end
end

set __extra_paths \
    $HOME/bin \
    /usr/local/share/npm/bin \
    /usr/local/bin \
    /usr/local/sbin \
    /usr/bin \
    /usr/sbin \
    /bin /sbin \
    /usr/texbin \
    /usr/games

for path in $__extra_paths
    __set_extra_path $path
end

set TERM xterm-256color
set EDITOR vim
