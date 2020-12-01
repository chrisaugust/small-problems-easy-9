# Grocery List 
#
# Problem
# Write a method which takes a 'grocery list' (ie an array) of fruits
# with quantities (eg ['apple', 3]) and converts it into a flattened array
# containing the correct number of fruit elements given by the quantities
# in the argument array.
#
# Example
# buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
#   ["apples", "apples", "apples", "orange", "bananas","bananas"]
#
#
# Data Structures / Type Signature
# array -> array
#
# Algorithm
# 1) use Array#map to transform each sub-array
# 2) flatten and return the result from step 1
#
# Code
require 'test/unit'

class GroceryList < Test::Unit::TestCase
  def test_buy_fruit
    assert_equal(buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]), 
                ["apples", "apples", "apples", "orange", "bananas","bananas"])
  end
end

def buy_fruit(nested_arr)
  result = nested_arr.map do |subarray| 
    temp = []
    subarray[1].times { temp << subarray[0] }
    temp
  end
  result.flatten
end
