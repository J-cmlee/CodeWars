def decode(word)
  firstletter = word.scan(/[0-9]/).join.to_i.chr
  restofword = word.scan(/[a-zA-Z]/)
  if restofword.length > 1
    restofword[0], restofword[-1] = restofword[-1], restofword[0]
  end
  firstletter + restofword.join
end

def decipher_this(string)
  words = string.split(" ").map{|word| decode(word)}.join(" ")
end

p decode("103ood")
p decipher_this('72olle 103doo 100ya')