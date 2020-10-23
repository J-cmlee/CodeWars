def string_transformer(str)
  str.swapcase.split(/\b/).reverse.join
end

p string_transformer('Example    string')