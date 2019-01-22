class River

  attr_reader :name
  attr_accessor :fish_collection

  def initialize(name, fish_collection)
    @name = name
    @fish_collection = fish_collection
  end

  def add_fish_to_the_river(new_fish)
     @fish_collection << new_fish
  end

  def river_loses_fish_to_bear(fish)
    for object in @fish_collection
      if object == fish
        return @fish_collection.delete(object)
      end
    end
  end

  def fish_count
    return @fish_collection.length
  end


end
