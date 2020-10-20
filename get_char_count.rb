def get_char_count string
  char_array = string.downcase.split("").select {|char| char =~ /[a-zA-Z0-9]/}
  char_array = char_array.uniq.group_by {|char| char_array.count(char)}
  char_array = char_array.each_value {|value| value.sort!}
end

p get_char_count("Mississippi") == {4=>["i", "s"], 2=>["p"], 1=>["m"]}
p get_char_count("Hello. Hello? HELLO!") == {6=>["l"], 3=>["e", "h", "o"]}