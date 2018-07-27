class Stack
  def initialize
    @stack_store = []
  end

  def push(el)
    @stack_store.push(el)
    el
  end

  def pop
    @stack_store.pop
  end

  def peek
    @stack_store.last
  end
end
