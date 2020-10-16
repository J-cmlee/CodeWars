def valid_parentheses(string)
  counter = 0
  string.chars.each do |char|
    case char
    when "(" then counter += 1
    when ")" then counter -= 1
    end
    return false if counter < 0
  end
  return false if counter > 0
  true
end