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

  it "rolling can be done for several dices" do
    dice = Dice.new()
    dice.roll_several_times(4)
  end

  it "After rolling n times, we should receive an array with the size of n" do
    dice = Dice.new()
    expect(dice.roll_several_times(5).class==Array && dice.roll_several_times(5).size==5).to eq true
  end


end
