class LRUCache
  def initialize(size)
    @cache = []
    @size = size
  end

  def count
    @cache.length
  end

  def add(el)
    if @cache.include?(el)
      @cache.delete(el)
      @cache << el
    elsif @cache.count > @size
      @cache.shift
      @cache << el
    else
      @cache << el
    end
  end

  def show
    print @cache
  end

  private
  # helper methods go here!

end
