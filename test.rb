def solution(input, markers)
  comment_flag = false
  result_string = []
  input.chars.each do |char|
    if markers.include?(char)
      comment_flag = true
      result_string.pop
    end
    comment_flag = false if char == "\n"
    if comment_flag == false
      result_string << char
    end
  end
  result_string.join
end

p solution("apples, plums % and bananas\npears\noranges !applesauce", ["%", "!"])
expected = "apples, plums\npears\noranges"

def solution2(input, markers)
  input.gsub(/\s+[#{markers.join}].*/, "")
end