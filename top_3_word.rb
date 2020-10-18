MAX_LIMIT = 3

def top_3_words(text)
  word_hash = Hash.new(0)
  letters_only = text.split(" ").map {|word| word.downcase.scan(/[\w']+/).join}
  letters_only.select! {|word| word != "" && word.index(/[a-z]/)}
  letters_only.each do |word|
    word_hash[word] += 1
  end
  count_array = word_hash.sort_by {|k, v| v}.reverse
  p count_array
  top_words = []
  
  0.upto(MAX_LIMIT-1) do |index|
    break if count_array[index] == nil
    top_words << count_array[index][0]
  end
  top_words
end

p top_3_words("a a a  b  c c  d d d d  e e e e e")
p top_3_words("e e e e DDD ddd DdD: ddd ddd aa aA Aa, bb cc cC e e e")

def top_3_words2(text)
  text.scan(/[A-Za-z']+/)
      .select { |x| /[A-Za-z]+/ =~ x }
      .group_by { |x| x.downcase }
      .sort_by { |k,v| -v.count }
      .first(3)
      .map(&:first)
end