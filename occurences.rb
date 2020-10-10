def delete_nth(order, max_e)
  count_hash = Hash.new(0)
  order.select do |ele|
    count_hash[ele] += 1
    count_hash[ele] <= max_e
  end
end

p delete_nth([20,37,20,21], 1)
p delete_nth([1,1,3,3,7,2,2,2,2], 3)