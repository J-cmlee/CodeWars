def match(dir1, dir2)
  return false if dir1 == nil || dir2 == nil
  return true if ["NORTH", "SOUTH"].sort == [dir1, dir2].sort
  return true if ["EAST", "WEST"].sort == [dir1, dir2].sort
  false
end

def dirReduc(arr)
  directions = arr.clone
  index = 0
  compressed = true
  while compressed == true
    compressed = false
    while index < directions.length
      if match(directions[index], directions[index+1])
        directions.delete_at(index)
        directions.delete_at(index)
        compressed = true
      else
        index += 1
      end
    end
    index = 0
  end
  directions
end

a = ["NORTH", "SOUTH", "SOUTH", "EAST", "WEST", "NORTH", "WEST"]
p dirReduc(a)

OPPOSITE = {
  "NORTH" => "SOUTH",
  "SOUTH" => "NORTH",
  "EAST"  => "WEST",
  "WEST"  => "EAST"
}

def dirReduc2(arr)
  stack = []
  arr.each do |dir|
    OPPOSITE[dir] == stack.last ? stack.pop : stack.push(dir)
  end
  stack
end