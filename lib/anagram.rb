# Your code goes here!
require 'pry'
class Anagram

def initialize(word)
  @word = word
end

def match(array)

  array.each do | scrambledword |
    sortedletters = scrambledword.split("").sort
    sortedword = @word.split("").sort
    binding.pry
    if sortedletters == sortedword

      return scrambledword
    end #end of if

  end #endof iteration

  # i need to add a return nil. why? because if the if was neer activated, that means the scrambledword is never returned
  #that means once the iteration is done, it wll return the array. and since the iteration is the last thing in this match method, whatever the iteration returns is whatever the match method return. and i don't want to return the array. either i return the correct word i return nil
  return nil
end

end

hey = Anagram.new("hello")
puts hey.match(%w(enlists google inlets banana))
