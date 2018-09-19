require_relative("../fish_class.rb")
require_relative("../bear_class.rb")
require_relative("../river_class.rb")
require("minitest/rg")
require("minitest/autorun")

class RiverTest < MiniTest::Test

  def setup
    @river = River.new("Pure Dead Brilliant, River")
    @fish1 = Fish.new("Nemo")
    @fish2 = Fish.new("Sharkbait")
    @fish3 = Fish.new("Big Kev")
    @fish4 = Fish.new("Wee Dave")
    @fish5 = Fish.new("Gilbert")
    @bear1 = Bear.new("Pooh the Winnie", "Grizzly Bear")
    @bear2 = Bear.new("Farty McGhee", "Teddy Bear")
  end

  def test_new_river()   #checks if the river class is set up properly
    assert_equal(River,@river.class())
  end

  def test_count_fish()
    assert_equal(0,@river.count_fish())
  end
  #
  def test_add_fish()  #checked if we could add a fish into our array
    @river.add_fish(@fish1)
    assert_equal(1,@river.count_fish())
  end
  #
  def test_bear_eat_fish()  #method for eating fish... not sure if this is overkill.
    @river.add_fish(@fish5)
    @river.add_fish(@fish3)

    food1 = @river.bear_eat_fish(@fish5)
    food2 = @river.bear_eat_fish(@fish3)

    @bear1.can_eat_fish(food1)
    @bear1.can_eat_fish(food2)

    assert_equal(0,@river.count_fish)
    assert_equal(2,@bear1.count_stomach)

    p @bear1.print_stomach
  end





end
