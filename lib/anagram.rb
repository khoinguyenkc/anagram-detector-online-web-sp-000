# Your code goes here!
class Anagram

def initialization(word)
  @word = word
end

def match(array)
  array.each do | scrambledword |
    sortedletters = scrambledword.split("").sort
    if sortedletters == @word
      return scrambledword
    end
  end

end
