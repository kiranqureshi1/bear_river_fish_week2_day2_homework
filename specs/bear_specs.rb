require("minitest/autorun")
require("minitest/rg")
require_relative("../bear.rb")
require_relative("../river.rb")
require_relative("../fish.rb")

class TestBear < MiniTest::Test

  def setup
    sera = Fish.new("Sera")

    basa = River.new("basa", ["scallop", "Cod", "salmon", "ravi", "Sera"])

    @bear_1 = Bear.new("Yogi", "Grizzly", ["roll", "beef", "leaves"])
  end

  def test_find_name
    assert_equal("Yogi", @bear_1.name)
  end

  def test_add_fish_to_the_food_collection
    assert_equal(["roll", "beef", "leaves", "Sera"], @bear_1.add_fish_to_the_food_collection("Sera"))
  end


end
