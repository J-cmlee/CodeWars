def generateHashtag(str)
  return false if str.empty? || str.length == str.count(" ")
  hashtag = "#" + str.split(" ").map {|word| word.capitalize}.join
  return false if hashtag.length > 140
  p str
  hashtag
end

p generateHashtag("")
p generateHashtag("Hello world   hi    mom")
p generateHashtag(' '*200)

def generateHashtag2(str)
  str = "#" << str.split.map(&:capitalize).join
  str.size <= 140 && str.size > 1 ? str : false
end