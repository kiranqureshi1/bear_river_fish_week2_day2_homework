class Bear

  attr_reader :name, :type
  attr_accessor :food_collection

  def initialize(name, type, food_collection)
    @name = name
    @type = type
    @food_collection = food_collection
  end

  def add_fish_to_the_food_collection(fish)
    return @food_collection << fish

  end

  def make_sound
    return "roar"
  end

  def food_count
    return @food_collection.length
  end
  #why the food collection is 3 eventhough I added fish to the food above???




end
