def scramble(word)
  char_array = word.split("").select {|char| char =~ /[a-zA-z]/}
  first_letter = char_array.shift
  last_letter = char_array.pop
  char_array.sort!
  char_array.unshift(first_letter)
  char_array.push(last_letter)
  word_array = []
  0.upto(word.length-1) do |index|
    word_array[index] = word[index] =~ /[a-zA-z]/ ? char_array.shift : word[index]
  end
  word_array.join
end

def scramble_words(words)
  words.split(" ").map {|word| scramble(word)}.join(" ")
end

p scramble("abc-def-dd")
test_word = "you've gotta dance like there's nobody watching, love like you'll never be hurt, sing like there's nobody listening, and live like it's heaven on earth."
test_sol = "you've gotta dacne like teehr's nbdooy wachintg, love like ylo'ul neevr be hrut, sing like teehr's nbdooy leiinnstg, and live like it's haeevn on earth."

p scramble_words(test_word) == test_sol