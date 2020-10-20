def persistence(n)
  return 0 if n.to_s.length == 1
  digits = n.to_s
  counter = 0
  loop do
    digits = digits.split("").reduce(1) {|product, digit| product * digit.to_i}.to_s
    counter += 1
    break if digits.length == 1
  end
  counter
end

p persistence(12)
p persistence(999)

def persistence2(n)
  n < 10 ? 0 : 1 + persistence2(n.to_s.chars.map(&:to_i).reduce(:*))
end