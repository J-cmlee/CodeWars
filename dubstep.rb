def song_decoder(song)
  song.split("WUB").select {|word| word =~ /[A-Z]/}.join(" ")
end

p song_decoder("AWUBBWUBC")
p song_decoder("AWUBWUBWUBBWUBWUBWUBC")
p song_decoder("WUBAWUBBWUBCWUB")

def song_decoder2(song)
  song.gsub(/(WUB)+/, ' ').strip
end