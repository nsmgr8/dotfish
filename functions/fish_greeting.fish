function fish_greeting
  set_color $fish_color_command[1]
  uname -npsr
  set_color $fish_color_quote
  uptime
  if which fortune >/dev/null ^&1
      set quote (fortune -s)
      if which cowsay >/dev/null ^&1
        set cow (cowsay -l | tail -n +2 | tr ' ' '\n' | sort -R | head -1)
        echo $quote | cowsay -f $cow
      else
        echo
        echo $quote
        echo
      end
  end
  set_color normal
end
