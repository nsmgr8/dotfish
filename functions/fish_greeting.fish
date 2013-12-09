function fish_greeting
  set_color $fish_color_command[1]
  uname -npsr
  uptime
  set_color $fish_color_quote
  fortune -s | cowsay
  set_color normal
end
