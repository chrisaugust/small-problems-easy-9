# Uppercase Check
#
# Problem
# Write a method that takes a string argument, and returns true 
# if all of the alphabetic characters inside the string are uppercase, 
# false otherwise. Characters that are not alphabetic should be ignored.
#
# Examples
# uppercase?('t') == false
# uppercase?('T') == true
# uppercase?('Four Score') == false
# uppercase?('FOUR SCORE') == true
# uppercase?('4SCORE!') == true
# uppercase?('') == true
#
# Data Structures / Type Signature
# String -> Boolean
#
#
# Algorithm
# 1) set result to true
# 2) split argument string into an array for checking
# 3) iterate over characters, checking for lowercase
# 4) if lowercase character, set result to false
# 5) return result
#
# Code
require 'test/unit'

class UppercaseCheck < Test::Unit::TestCase
  def test_uppercase?
    assert_equal( uppercase?('t'), false )
    assert_equal( uppercase?('T'), true )
    assert_equal( uppercase?('Four Score'), false )
    assert_equal( uppercase?('FOUR SCORE'), true )
    assert_equal( uppercase?('4SCORE!'), true )
    assert_equal( uppercase?(''), true )
  end
end

def uppercase?(str)
  result = true
  chars = str.split('')
  chars.each do |c|
    if c =~ /[a-z]/
      result = false
    end
  end
  result
end
