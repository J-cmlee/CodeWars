def anagram_difference(w1, w2)
  common_letters = []
  w2letters = w2.chars
  w1.chars.each do |char|
    if w2letters.include?(char)
      common_letters << char
      w2letters.delete_at(w2letters.index(char))
    end
  end
  w1.size + w2.size - 2* common_letters.length
end

p anagram_difference('codewars', 'hackerrank')