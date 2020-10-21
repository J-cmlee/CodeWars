

p sum_of_intervals([[1, 4], [7, 10], [3, 5]])

def sum_of_intervals(arr)
  s,top = 0, nil
  for a,b in arr.sort do
      top = a if top.nil? || top < a
      if b > top
          s  += b-top
          top = b
      end
  end
  return s
end