set left_black_arrow_glyph  \uE0B2

function fish_right_prompt
  cmd_time_taken
  set_color 323
  switch (uname)
    case Darwin
      echo -n "$left_black_arrow_glyph"
  end
  set_color -b 323
  set_color 9c9
  set current_date (date "+%m-%d %H:%M:%S")
  echo -n " $current_date "
  set_color normal
end

function cmd_time_taken
  if [ -n (echo $CMD_DURATION | tr " " d) ]
    set_color 600
    switch (uname)
      case Darwin
        echo -n "$left_black_arrow_glyph"
    end
    set_color -b 600
    set_color c99 --bold
    echo -n " $CMD_DURATION "
  end
end
