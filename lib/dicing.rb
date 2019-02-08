class Dice
  attr_reader :ar

  def initialize()
    @ar = []
    @result = 0
  end
  def roll(n=1)
    if one_argument?(n)==true
      dice_number = rand(6)+1
      ar << dice_number
      return dice_number
    else
      n.times{ar << rand(6)+1}
      return ar
    end
  end

  def one_argument?(a)
    a==1?true:false
  end

  def result
    return ar.sum()
  end

end

dice = Dice.new()

p dice.roll(5)
