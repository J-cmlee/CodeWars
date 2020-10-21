def cakes(recipe, available)
  return 0 unless recipe.keys.all? {|key| available.include?(key)}
  recipe.map {|key, value| available[key]/value}.min
end

def cakes2(recipe, available)
  available.default= 0
  recipe.map { |k,v| available[k] / v }.min
end

p cakes({"flour"=>500, "sugar"=>200, "eggs"=>1},{"flour"=>1200, "sugar"=>1200, "eggs"=>5, "milk"=>200})
