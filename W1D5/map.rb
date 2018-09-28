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
  end

  def delete(key)
  end

  def show

  end
end
