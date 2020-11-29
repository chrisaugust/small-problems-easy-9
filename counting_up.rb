# Counting Up
#
# Problem
# Write a method that takes an integer argument and returns an array
# of all integers, in sequence, between 1 and the argument.
#
# Examples
# sequence(5) == [1, 2, 3, 4, 5]
# sequence(3) == [1, 2, 3]
# sequence(1) == [1]
# 
#
# Data Structures / Type Signature
# Integer -> Array
#
#
# Algorithm
# 1) use integer argument (n) to create a range from 1 to n
# 2) convert range to array with #to_a
#
#
# Code
require 'test/unit'

class CountingUp < Test::Unit::TestCase
  def test_sequence
    assert_equal(sequence(5), [1, 2, 3, 4, 5])
    assert_equal(sequence(3), [1, 2, 3])
    assert_equal(sequence(1), [1])
  end
end

def sequence(n)
  (1..n).to_a
end
