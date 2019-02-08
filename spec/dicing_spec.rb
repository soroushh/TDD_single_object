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
    ar = 100.times.map{ dice.roll()}
    expect(ar.uniq.sort).to eq (1..6).to_a
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
