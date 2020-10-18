def kebabize(str)
  char_array = str.scan(/[a-zA-Z]/)
  char_array[0].downcase! if str != ""
  char_array.map {|char| char =~ /[A-Z]/ ? '-' + char.downcase : char}
            .join
end

p kebabize('camelsHaveThreeHumps')
p kebabize('camelsHave3Humps')

def kebabize2(str)
  puts str
  str.gsub(/([0-9])/, '').split(/(?=[A-Z])/).join('-').downcase
end