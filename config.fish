set dotfish_path $HOME/code/dotfish
set dotfish_functions $dotfish_path/functions
set dotfish_completions $dotfish_path/completions

if not contains $dotfish_functions $fish_function_path
    set fish_function_path $dotfish_functions $fish_function_path
end

if not contains $dotfish_completions $fish_complete_path
    set fish_complete_path $dotfish_completions $fish_complete_path
end

for load in (ls $dotfish_path/loads)
    . $dotfish_path/loads/$load
end

set local_fish_conf $HOME/.config/fish/config.local.fish
[ -f $local_fish_conf ]; and . $local_fish_conf
