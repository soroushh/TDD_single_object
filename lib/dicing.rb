class Dice
  def roll()
    rand(6)+1
  end
  def roll_several_times(a)
    ar = []
    a.times{ar << roll}
    return ar
  end
end
