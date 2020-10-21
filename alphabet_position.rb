def alphabet_position(text)
  alphabet = ('a'..'z').to_a
  text.downcase.chars.select {|char| char =~ /[a-z]/}.map {|char| (alphabet.index(char) + 1).to_s}.join(" ")
end

p alphabet_position("The sunset sets at twelve o' clock.")