# The different user stories

,,,
require "./lib/dicing.rb"
dice = Dice.new()
dice.roll()
,,,
,,,
require "./lib/dicing.rb"
dice = Dice.new()
dice.roll()
dice.roll <= 6
dice.roll >=1
,,,

require "./lib/dicing.rb"
dice = Dice.new()
a = dice.roll()
b = dice.roll()
a - b = 0 # it should return true, but at first it returns false.
,,,

,,,
require "./lib/dicing.rb"
dice = Dice.new()
a = dice.roll()
b = dice.roll()
a - b # it should return true, but at first it returns false.
dice.roll_several_times(4)
,,,

,,,
# Now, we want an array of four numbers between 1 and six.
require "./lib/dicing.rb"
dice = Dice.new()
a = dice.roll()
b = dice.roll()
dice.roll(4)
,,,

,,, # we want to see the result of our rolling for more than 1 time:
require "./lib/dicing.rb"
dice = Dice.new()
a = dice.roll()
b = dice.roll()
a - b # it should return true, but at first it returns false.
dice.roll(4)
dice.result()
,,,
