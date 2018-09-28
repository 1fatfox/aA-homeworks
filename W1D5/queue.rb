class Queue
  def initialize
    @some_array = []
  end

  def enqueue(el)
    some_array.push(el)
  end

  def dequeue
    some_array.shift
  end

  def peek
    some_array.first
  end
end
