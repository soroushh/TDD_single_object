class Dice
  def roll(n=1)
    if one_argument?(n)==true
      return rand(6)+1
    else
      ar = []
      n.times{ar<< rand(6)+1}
      return ar
    end
  end
  def one_argument?(a)
    a==1?true:false
  end
end
