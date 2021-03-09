# Group Anagrams
#
# Given the following array
words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']
# Write a program that prints out groups of words that are anagrams. 
# Anagrams are words that have the same exact letters in them but in a 
# different order. Your output should look something like this:
# 
# ["demo", "dome", "mode"]
# ["neon", "none"]
# #(etc)
#
# Explicit Requirements
# - input/output: Array[word, *] -> Array[words with same characters] to stdout
# - given an array of words, group the words that form anagrams and display them as
#   array
# - display groups of anagrams on separate lines
#
# Implicit
# - input array has 2 or more words
# - each array element is a single word
# - words have 4 characters each
# - lowercase letters only
#
# ?? punctuation
# ?? multiple words
#
# Data Structure: Array, Hash
#
# Algorithm
# ---------
# Approach: 
# 1) group words by character set
# 2) display groups
#
# Step-by-step
# - create a 'words' hash with input words as keys, and the character sets as values
# - sort words in hash by unique set of values
#     - get the unique set of values ( hash.value.uniq ) and assign to variable 'sets'#     - for each set in sets, output the return value of calling #select on 'words' 
#       with a code block that checks if the characters in each word are equal to the
#       characters in block variable 'set'

def anagrams(word_array)
  character_sets = word_array.map { |word| word.split('').sort }
  words_hash = word_array.zip(character_sets).to_h

  groupings = words_hash.values.uniq

  groupings.each do |group|
    p words_hash.select { |k,v| v == group }.keys
  end
end

anagrams(words)
