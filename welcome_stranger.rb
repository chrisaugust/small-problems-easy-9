# Welcome Stranger 
#
# Problem
# Write a method that takes two arguments, an array and a hash. The array 
# will contain 2 or more elements that will produce a person's name when 
# combined with adjoining spaces. The hash will contain two keys, :title and 
# :occupation, and the appropriate values. The method should return a greeting
# that uses the person's full name and mentions the person's title and 
# occupation.
#
# Examples
# greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
# => Hello, John Q Doe! Nice to have a Master Plumber around.
#
# Data Structures / Type Signature
# Array, Hash -> String
#
#
# Algorithm
# 1) convert array into a string with person's full name
# 2) return a string with greeting message and full name interpolated,
#    as well as title and occupation
#
#    eg "Hello #{full_name}, you're a great #{hash[:title]} #{hash[:occupation]}"
#
# Code
require 'test/unit'

class WelcomeStranger < Test::Unit::TestCase 
  def test_greetings
    assert_equal(greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' }),
                           "Hello, John Q Doe! Nice to have a Master Plumber around.")
  end
end

def greetings(arr, hash)
  full_name = arr.join(' ')
  return "Hello, #{full_name}! Nice to have a #{hash[:title]} #{hash[:occupation]} around."
end
