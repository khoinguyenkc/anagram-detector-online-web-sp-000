# Your code goes here!
require 'pry'
class Anagram

def initialize(word)
  @word = word
end

def match(array)

  array.each do | scrambledword |
    sortedletters = scrambledword.split("").sort
    binding.pry
    if sortedletters == @word

      return scrambledword
    end
  end
end

end

hey = Anagram.new("hello")
puts hey.match(%w(enlists google llohe inlets banana))
