class Bear

  attr_accessor :name, :type

  def initialize(name, type)

    @name = name
    @type = type
    @stomach = []

  end

  def count_stomach
    return @stomach.count
  end

  def can_eat_fish(fish)
    @stomach << fish
  end

  def print_stomach
    return @stomach
  end

  def bear_can_roar
    "Roooooar"
  end

end
