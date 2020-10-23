# input is a single string
# output is a single string
# do not mutate the original string

# input string s
# - separate into words using .split
# - loop START until words length = 1
#   - method to reverse and merge two array units together
# - loop END

def merge(ele1, ele2)
  return ele1.reverse if ele2 == nil
  ele1.reverse + ele2.reverse
end

def reverse_and_combine_text(s)
  words = s.split(" ")
  working_array = []
  while words.length > 1
    0.upto(words.length-1) do |index|
      unless index.odd?
        working_array << merge(words[index], words[index+1])
      end
    end
    
    words = working_array
    working_array = []
  end

  words[0]
end

a1 = reverse_and_combine_text("abc def ghi jkl")
