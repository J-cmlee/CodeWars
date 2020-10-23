PLENGTH = 5

def greatest_product(n)
  digit_array = n.chars.map(&:to_i)
  max_product = 0
  0.upto(digit_array.length-PLENGTH) do |index|
    product = digit_array[index..index+PLENGTH-1].reduce(1, :*)
    max_product = product if product > max_product
  end
  max_product
end

p greatest_product("123834539327238239583")

def greatest_product2(n)
  n.chars.each_cons(5).map { |a| a.map(&:to_i).reduce(:*) }.max
end