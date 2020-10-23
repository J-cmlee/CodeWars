# input are two integers, n and k
# output is an integer
# assume no mutation due to n,k being integers

# assume that k will always be less than n.length
# what we want is an integer of length n.length - k (all iterations of the digits)

# have a variable contain the lowest found integer
# iterate through all the combinations with k integers removed
# create an array of all possible digit combinations

def solve(n, k)
  n.to_s.chars.combination(n.to_s.size - k).map(&:join).map(&:to_i).min
end

p solve(123056,2)