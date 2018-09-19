require_relative("../bear_class.rb")
require_relative("../fish_class.rb")
require_relative("../river_class.rb")
require("minitest/rg")
require("minitest/autorun")

class BearTest < MiniTest::Test

  def setup()
    @bear = Bear.new("Pooh the Winnie","Grizzly Bear")
    @fish = Fish.new("Milhouse")
  end

  def test_can_create_bear()  #checks if the class is set up properly
    assert_equal(Bear,@bear.class())
  end

  def test_count_stomach
    assert_equal(0,@bear.count_stomach)

  end

  def test_can_eat_fish()
    @bear.can_eat_fish(@fish)
    assert_equal(1, @bear.count_stomach)
  end

  def test_bear_can_roar
    @bear.bear_can_roar
  end



end
