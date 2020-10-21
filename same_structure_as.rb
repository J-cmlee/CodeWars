def replace_values(array)
  return 1 if !array.is_a?(Array) || array == nil

  array.map! do |ele|
    replace_values(ele)
  end
  array
end

class Array
  def same_structure_as(test_case)
    replace_values(self) == replace_values(test_case)
  end
end

p [1].same_structure_as([1])
p [ [ [ ], [ ] ] ].same_structure_as( [ [ [ ], [ ] ] ] )