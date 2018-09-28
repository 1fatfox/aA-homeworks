class Map
  attr_reader :my_map

  def initialize
    @my_map = []
  end

  def set(key, value)
    if my_map.include?(key)
      my_map << [key, value]
    else
      my_map.each do |el|
        el.each.with_index do |e, i|
          if el[i] == key
            el[i + 1] = value
          end
        end
      end
    end
    my_map
  end


  def get(key)
    return nil if !my_map.include?(key)
    my_map.each do |el|
      el.each.with_index do |e, i|
        return el[i + 1] if el[i] == key
      end
    end
  end

  def delete(key)
    my_map.each do |el|
      el.each.with_index do |e, i|
        if my_map[i] == e
          my_map.delete(my_map(i))
          my_map.delete(my_map(i + 1))
        end
      end
    end
  end

  def show
    copy = []
    my_map.map { |el| copy << el }
    copy
  end

end
