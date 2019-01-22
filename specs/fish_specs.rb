require("minitest/autorun")
require("minitest/rg")
require_relative("../fish.rb")

class TestFish < MiniTest::Test

  def setup
    @fish_1 = Fish.new("nemo")
  end

  def test_find_name
    assert_equal("nemo", @fish_1.name)
  end


end
