class Map
  def initizlize
    @map_array = []
  end

  def set(key, value)
    idx = map_array.index { |pair| pair[0] == key}
    if idx
      map_array[idx][1] = value
    else
      map_array << [key, value]
    end
  end

  def get(key)
    map_array.each {|pair| return pair[1] if pair[0] == key}
    nil
  end

  def delete(key)
    value = get(key)
    map_array.reject! {|pair| pair[0] == key}
    value
  end

  def show
    deep_dup(map_array)
  end

  private

  attr_reader :map_array

  def deep_dup(arr)
    map {|el| el.is_a?(Array) ? deep_dup(el) : el}
  end

end
