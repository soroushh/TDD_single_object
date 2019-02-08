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
    expect(dice).to receive(:rand).and_return(3)
    expect(dice.roll).to eq 4
  end

  it "rolling can be done for several dices" do
    dice = Dice.new()
    dice.roll(4)
  end

  it "After rolling n times, we should receive an array with the size of n" do
    dice = Dice.new()
    ar = dice.roll(5)
    expect(ar.class==Array && ar.length ==5 ).to eq true
  end
  it "After rolling n times, we should receive a number sum of all rolls." do
    dice = Dice.new()
    ar = dice.roll(3)
    point = ar.sum
    expect(dice.result).to eq point

  end

end
