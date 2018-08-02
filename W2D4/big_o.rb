#(O)n time
def clever_octopus(array)
  longest_fish = array[0]
  array.each do |fish|
    longest_fish = fish if fish.length > longest_fish.length
  end
  longest_fish
end

#O(n^2) time
def sluggish_octopus(array)
  array.each_with_index do |fish1, i1|
    longest_fish = true
    array.each_with_index do |fish2, i2|
      next if i1 == i2
      if fish2.length > fish1.length
        longest_fish = false
      end
    end
    return fish1 if longest_fish
  end
end


#O(n log n ) time
def dominant_octopus(array)

end
