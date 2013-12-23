function http_debug
    set restargs ''
    if [ (count $argv) -gt 2 ]
        set restargs $argv[3..-1]
    end
    curl -Ivsx $argv[1] $argv[2] $restargs >/dev/null
end
