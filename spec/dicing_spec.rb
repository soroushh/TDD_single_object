require "dicing"
describe Dice do
  it do
    dice = Dice.new()
  end
  it do
    dice = Dice.new()
    expect(dice.roll <=6 && dice.roll >=1).to eq true
  end
end
