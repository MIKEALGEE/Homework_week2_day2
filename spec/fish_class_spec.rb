require_relative("../fish_class.rb")
require("minitest/rg")
require("minitest/autorun")

class FishTest < MiniTest::Test

  def setup
    @fish = Fish.new("Sir Swims Alot")
  end

  def test_make_fish()   #checks to see if the class is set up properly
    assert_equal(Fish,@fish.class())
  end


  




end
