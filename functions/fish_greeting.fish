function fish_greeting
  set_color $fish_color_command[1]
  uname -npsr
  set_color $fish_color_quote
  uptime
  #fortune -s | cowsay
  set_color normal
end
