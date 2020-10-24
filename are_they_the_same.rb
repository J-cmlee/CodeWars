# Given two arrays of the same size
# return a boolean true or false
# find whether the values in the array b is the squares of the numbers in a

# first check case whether a or b are empty -> return false
# sort both arrays - they need to be in the same order
# iterate each element using an index (i) where a[i]**2 == b[i]

def comp(array1, array2)
  return false if array1 == nil || array2 == nil
  
  a1 = array1.dup.sort
  a2 = array2.dup.sort
  
  0.upto(a1.length-1) do |index|
    return false if a1[index]**2 != a2[index]
  end
  true
end

p comp( [121, 144, 19, 161, 19, 144, 19, 11], 
        [11*11, 121*121, 144*144, 19*19, 161*161, 19*19, 144*144, 19*19])
