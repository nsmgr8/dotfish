set left_black_arrow_glyph  \u2B82
set bk_color 3a2a03
set fore_color c99

function fish_right_prompt
  set_color $bk_color
  echo -n "$left_black_arrow_glyph"
  set_color -b $bk_color
  set_color $fore_color --bold
  set current_date (date "+%m-%d %H:%M:%S")
  echo -n " $current_date "
  set_color normal
end
