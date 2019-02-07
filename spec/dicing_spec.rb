require "dicing"
describe Dice do
  it do
    dice = Dice.new()
  end

  it "rolling a dice will return a number between 1 and 6" do
    dice = Dice.new()
    expect(dice.roll <=6 && dice.roll >=1).to eq true
  end

  it "rolling a dice will return a random number between 1 and 6." do
    dice = Dice.new()
    a = dice.roll
    b = dice.roll
    c = dice.roll
    expect(a>b || b>a || b>c || c>b).to eq true
  end

  it "rolling can be done for several dices." do
    dice = Dice.new()
    dice.roll(4)
  end


end
