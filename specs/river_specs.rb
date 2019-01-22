require("minitest/autorun")
require("minitest/rg")
require_relative("../river.rb")
require_relative("../fish.rb")

class TestRiver < MiniTest::Test

  def setup
    ravi = Fish.new("ravi")

    @river_1 = River.new("Amazon", ["scallop", "Cod", "salmon"])
  end

  def test_find_name
    assert_equal("Amazon", @river_1.name)
  end

  def test_add_fish_to_the_river
    assert_equal(@river_1.add_fish_to_the_river("ravi"), ["scallop", "Cod", "salmon", "ravi"])
  end

  def test_river_loses_fish_to_bear
    assert_equal(["scallop", "Cod", "salmon"], @river_1.river_loses_fish_to_bear("ravi"))
  end

  def test_fish_count
    assert_equal(3, @river_1.fish_count)
  end


end
