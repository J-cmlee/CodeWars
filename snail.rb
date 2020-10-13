def snail(array)
  # Edge cases to exit immediately
  return [] if array == []
  return array.flatten if array.flatten.length == array.length
  # To store co-ordinates that have already been completed
  completed_array = []
  # Directions value: 1 = right, 2 = down, 3 = left, 4 = up
  direction = 1
  # Values to array co-ordinates (top left = 0,0)
  x = 0
  y = 0
  # To store the values
  snail_array = []

  while array.flatten.length != snail_array.length
    while !(array[x].nil?) && !(array[x][y].nil?) && (!completed_array.include?([x,y]))
      snail_array << array[x][y]
      completed_array << [x,y]
      case direction
      when 1 then y += 1
      when 2 then x += 1
      when 3 then y -= 1
      when 4 then x -= 1
      else
      end
      break if x <0 || y <0
    end
    case direction
    when 1
      y -= 1
      x += 1
    when 2 
      x -= 1
      y -= 1
    when 3
      y += 1
      x -= 1
    when 4
      x += 1
      y += 1
    else
    end
    direction += 1
    direction = 1 if direction > 4 # Reset direction if finished moving up
    #break # Testing
  end
  snail_array
end

test = [[1,2,3],[4,5,6],[7,8,9]]
p snail(test)
test2 = [[1,2,3,1],[4,5,6,4],[7,8,9,7],[7,8,9,7]]
p snail(test2)

def snail2(array)
  array.empty? ? [] : array.shift + snail(array.transpose.reverse)
end