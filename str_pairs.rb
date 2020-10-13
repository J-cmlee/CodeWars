def solution(str)
  pair_array = []
  return [] if str == ""
  0.upto(str.length-1) do |index|
    if (index == str.length - 1) && (str.length.odd?)
      pair_array << str[index] + "_"
    elsif index == 0 || index.even?
      pair_array << str[index..index+1]
    end
  end
  pair_array
end

p solution("abcdef")
p solution("abcdefg")
p solution("")

def solution2 (str)
  (str + '_').scan /../
end

p solution2("abcdefg")