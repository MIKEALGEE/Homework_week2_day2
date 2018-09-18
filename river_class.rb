class River

attr_writer :name, :fish_num, :bears

  def initialize(name)

    @name = name
    @fish_num = []

  end

    def count_fish
      return @fish_num.length
    end

  def add_fish(fish)
    @fish_num << fish
  end

  def bear_eat_fish (fish)
    @fish_num.delete(fish)
  end





end
