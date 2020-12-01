# Name Swapping 
#
# Problem
# Write a method that takes a first name, a space, and a last name
# passed in as a single string argument, and returns a string with
# the last name first, followed by a comma, space, and the first name.
#
#
# Examples
# swap_name('Joe Roberts') == 'Roberts, Joe'
#
#
# Data Structures / Type Signature
# string -> string
#
#
# Algorithm
# 1) split string into a words array
# 2) add a comma to the last name (e.g. words[-1] = word + ',' )
# 3) copy values in reverse order to another array
# 4) join the values to create a string
# 5) return the string
#
#
# Code
require 'test/unit'

class NameSwapping < Test::Unit::TestCase
  def test_swap_name
    assert_equal(swap_name('Joe Roberts'), 'Roberts, Joe')
    assert_equal(swap_name('Chris Danielson'), 'Danielson, Chris')
  end
end

def swap_name(name)
  first_and_last = name.split

  first_and_last[-1] += ','

  last_name_first = []
  last_name_first[0], last_name_first[1] = first_and_last[-1], first_and_last[-2]

  reversed_name = last_name_first.join(' ')
end
