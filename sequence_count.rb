# Sequence Count 
#
# Problem
# Create a method that takes two integers as arguments. The first represents
# a count and the second is the starting number in the sequence to be created by
# the method. The method's return value should be an array containing the same
# number of elements as the count arguments, with the values being multiples 
# of the starting number (second argument). Assume that the count argument will
# always have a value of 0 or greater, while the starting number can be any
# integer value. If the count is 0, an empty list should be returned.
#
#
# Examples
# sequence(5, 1) == [1, 2, 3, 4, 5]
# sequence(4, -7) == [-7, -14, -21, -28]
# sequence(3, 0) == [0, 0, 0]
# sequence(0, 1000000) == []
#
# Data Structures / Type Signature
# Integer -> Array
#
# Algorithm
# 0) return empty array if the count argument is 0
# 1) intialize empty sequence array
# 2) use count argument to create a loop
# 3) in each iteration of loop, use starting number
#    argument to add a sequence value to the array
# 4) return the array
#
# Code
require 'test/unit'

class SequenceCount < Test::Unit::TestCase
  def test_sequence
    assert_equal(sequence(5, 1), [1, 2, 3, 4, 5])
    assert_equal(sequence(4, -7), [-7, -14, -21, -28])
    assert_equal(sequence(3, 0), [0, 0, 0])
    assert_equal(sequence(0, 1000000), [])
  end
end

def sequence(count, starting_num)
  return [] if count == 0 
  
  sequence_array = []

  (1..count).each_with_index do |i| 
    sequence_array << starting_num * i    
  end

  sequence_array
end
