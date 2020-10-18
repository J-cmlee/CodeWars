def is_valid_walk(walk)
  return false if walk.length != 10

  directions_opposite = {
    'n'=> 's',
    's'=> 'n',
    'e'=> 'w',
    'w'=> 'e'
  }
  position_stack = []
  walk.each do |dir|
    directions_opposite[dir] == position_stack.last ? position_stack.pop : position_stack.push(dir)
  end
  position_stack.empty?
end

p is_valid_walk(['n','s','n','s','n','s','n','s','n','s'])
p is_valid_walk(['w'])

def isValidWalk2(walk)
  walk.count('w') == walk.count('e') and
  walk.count('n') == walk.count('s') and
  walk.count == 10
end