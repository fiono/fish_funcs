function rand_item
  set ind (random 1 (count $argv))
  echo $argv[$ind]
end
