# Always Return Negative 
#
# Problem
# Write a method that takes a number as an argument and returns
# the negative value of that number (if positive). If 0 or negative,
# return the original number.
#
# Examples
# negative(5) == -5
# negative(-3) == -3
# negative(0) == 0
#
#
# Data Structures / Type Signature
# Integer -> Integer
#
# Algorithm
# 1) check if argument is negative or 0; return argument if it is
# 2) otherwise multiply the argument by -1 and return that value
#
# Code
require 'test/unit'

class AlwaysReturnNegative < Test::Unit::TestCase
  def test_negative
    assert_equal(negative(5), -5)
    assert_equal(negative(-3), -3)
    assert_equal(negative(0), 0)
  end
end

def negative(num)
  if (num == 0) || (num < 0)
    return num
  else
    return num *= -1 
  end
end
