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




end
