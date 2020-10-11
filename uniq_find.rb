def find_uniq(arr)
  sample_hash = Hash.new(0)
  arr[0..2].each {|ele| sample_hash[ele]+= 1}  
  sample_hash.each {|k,v| return k if v== 1}
  arr.each {|ele| return ele if ele != arr[0]}
end

p find_uniq([1,1,0])
p find_uniq([1,1,1,1,0])

def find_uniq(arr)
  arr.uniq.each { |x| return x if arr.count(x) == 1 }
end