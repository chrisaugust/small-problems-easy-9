# How long are you?
#
# Problem
# Write a method that takes a string as an argument and returns 
# an array with a value for each word consisting the  word followed 
# by a space and the length of that word. Assume that the words in the
# string are separated by exactly one space and that any substring of 
# non-space characters is a word.
#
# Examples
# word_lengths("cow sheep chicken") == 
#   ["cow 3", "sheep 5", "chicken 7"]
#
# word_lengths("baseball hot dogs and apple pie") ==
#   ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]
#
# word_lengths("It ain't easy, is it?") == 
#   ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]
#
# word_lengths("Supercalifragilisticexpialidocious") ==
#   ["Supercalifragilisticexpialidocious 34"]
#
# word_lengths("") == []
#
# 
# Data Structures / Type Signature
# String -> Array
#
# 
# Algorithm
# 1) split string into an array of words
# 2) call Array#map and String#length on the words
#    in the word array to create the desired output array
# 3) return array from step 2
#
#
# Code
require 'test/unit'

class HowLongAreYou < Test::Unit::TestCase
  def test_word_lengths
    assert_equal(word_lengths("cow sheep chicken"),
                             ["cow 3", "sheep 5", "chicken 7"])

    assert_equal(word_lengths("baseball hot dogs and apple pie"),
                  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"])
                                                                                 
    assert_equal(word_lengths("It ain't easy, is it?"),
                  ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"])
                                                                                 
    assert_equal(word_lengths("Supercalifragilisticexpialidocious"),
                ["Supercalifragilisticexpialidocious 34"])          
                                                                                 
    assert_equal(word_lengths(""), [])
  end
end

def word_lengths(str)
  words = str.split

  words_with_length = 
  words.map do |word| 
    "#{word} #{word.length}"
  end

  words_with_length
end
