set dotfish_path $HOME/code/dotfish

set fish_function_path $dotfish_path/functions $fish_function_path
set fish_complete_path $dotfish_path/completions $fish_complete_path

for load in (ls $dotfish_path/loads)
    . $dotfish_path/loads/$load
end

set local_fish_conf $HOME/.config/fish/config.local.fish
[ -f $local_fish_conf ]; and . $local_fish_conf
