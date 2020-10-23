def next_bigger_num(integer)
  largest = integer.to_s.chars.sort.reverse.join.to_i
  return -1 if integer == largest

  (integer + 1).upto(largest) do |value|
    return value if value.to_s.chars.sort == integer.to_s.chars.sort
  end
end


p next_bigger_num(513) == 531
p next_bigger_num(2017) == 2071
p next_bigger_num(531) == -1