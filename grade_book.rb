# Grade Book
#
# Problem
# Write a method that determines the avg. of the three scores passed
# to it and returns the letter value associated with that grade.
#
# 90 <= score < 100   ==> A
# 80 <= score < 90    ==> B
# 70 <= score < 80    ==> C
# 60 <= score < 70    ==> D
# 0 <= score < 60     ==> F
#
#
# Examples
# get_grade(95, 90, 93) == "A"
# get_grade(50, 50, 95) == "D"
#
#
# Data Structures / Type Signature
# integer(s) -> string 
#
#
# Algorithm
# 1) find the average
# 2) determine the letter grade
# 3) return letter grade
#
# Code
require 'test/unit'

class GradeBook < Test::Unit::TestCase
  def test_get_grade
    assert_equal(get_grade(95, 90, 93), "A")
    assert_equal(get_grade(50, 50, 95), "D")
  end
end

def get_grade(x,y,z)
  avg = (x + y + z) / 3

  if avg >= 90 && avg < 100
    return 'A'
  elsif avg >= 80 && avg < 90 
    return 'B'
  elsif avg >= 70 && avg < 80 
    return 'C'
  elsif avg >= 60 && avg < 70 
    return 'D'
  elsif avg >= 0 && avg < 60  
    return 'F'
  end
end
