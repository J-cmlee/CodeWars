def max_sequence(arr)
  #your code here
  max_value = 0
  subarrays = []
  0.upto(arr.length-1) do |left_index|
    left_index.upto(arr.length-1) do |right_index|
      subarrays << arr[left_index..right_index]
    end
  end
  subarrays.each do |subarray|
    max_value = subarray.sum if subarray.sum > max_value
  end
  max_value
end

p max_sequence([])
p max_sequence([-2, 1, -3, 4, -1, 2, 1, -5, 4])

def max_sequence2(arr)
  sum = 0
  max = 0
  for i in 0...arr.length
    sum += arr[i]
    
    if sum < 0
      sum = 0
    end
    
    if sum > max
      max = sum
    end
  end
  max
end