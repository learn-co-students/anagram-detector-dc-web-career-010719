require 'pry'

class Anagram
attr_accessor :word

def initialize(word)
  @word = word
end

def match(possible)
  possible.select{|element|
    element.split('').sort == word.split('').sort}

  
end

end
