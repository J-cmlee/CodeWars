def duplicate_count(text)
  #your code here
  char_hash = Hash.new(0)
  text.chars.each do |character|
    char_hash[character.downcase] += 1
  end
  count = 0
  char_hash.each_value do |value|
    count += 1 if value >= 2
  end
  count
end

def duplicate_count2(text)
  hsh = Hash.new(0)
  text.downcase.chars.each { |c| hsh[c] += 1 }
  hsh.values.count { |k| k > 1 }
end