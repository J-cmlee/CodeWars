

def panagram?(string)
  # enter your code here
  letter_hash = Hash.new(0)
  ('a'..'z').each do |letter|
    letter_hash[letter] = 0
  end
  string.chars.each do |letter|
    letter_hash[letter] += 1
  end
  !letter_hash.has_value?(0)
end

def panagram2?(string)
  ("a".."z").all? {|letter| string.include?(letter)}
end

p panagram2?("The quick brown fox jumps over the lazy dog.")