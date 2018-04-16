set color_ind 1

function next_color
  set colors F55 F65 F75 F85 FA1 EA1 EC3 ED4 DE4 CE4 BE3 AE2 9E4 8E6 6EA 6EB 6EC 6DD 6DE 7CE 8BE 99E A8E B6E C5C D5A E58

  if math $color_ind == (count $colors) > /dev/null
    set color_ind 1
  else
    set color_ind (math $color_ind + 1)
  end

  echo $colors[$color_ind]
end

function fish_prompt
    set_color --bold (next_color)
    echo -n (pwd) (rand_emoji) ' > '
    set_color normal
end
