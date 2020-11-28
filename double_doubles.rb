# Double Doubles 
#
# Problem
# Write a method that takes a number as an argumment and returns
# a number that is double the argument, unless the argument is 
# a 'double' number (ie has an even number of digits with the left-side
# digits being the same as the right-side digits).
#
# Examples
# twice(37) == 74
# twice(44) == 44
# twice(334433) == 668866
# twice(444) == 888
# twice(107) == 214
# twice(103103) == 103103
# twice(3333) == 3333
# twice(7676) == 7676
# twice(123_456_789_123_456_789) == 123_456_789_123_456_789
# twice(5) == 10
#
#
# Data Structures / Type Signature
# Integer -> Integer
#
#
# Algorithm
# 1) check if the argument is a 'double number'; return if true
# 2) multiply argument by 2 and return
#
#
# Code
require 'test/unit'

class DoubleDoubles < Test::Unit::TestCase
  def test_twice
    assert_equal(twice(37), 74)
    assert_equal(twice(44), 44)
    assert_equal(twice(334433), 668866)
    assert_equal(twice(444), 888)
    assert_equal(twice(107), 214)
    assert_equal(twice(103103), 103103)
    assert_equal(twice(3333), 3333)
    assert_equal(twice(7676), 7676)
    assert_equal(twice(123_456_789_123_456_789), 123_456_789_123_456_789)
    assert_equal(twice(5), 10)
  end
end

def twice(num)
  num_str = num.to_s
  length = num_str.length
  if length.even? and (num_str[0, length/2] == num_str[length/2, length])
    return num_str.to_i
  else
    return num*2
  end
end
