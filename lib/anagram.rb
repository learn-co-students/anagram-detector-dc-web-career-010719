# Your code goes here!
class Anagram

  attr_accessor :word

  def initialize(word)
    @word = word
  end

  def match(potential_anagrams)
    anagram_array = []
    potential_anagrams.each do |new_word|
      if @word.split('').sort == new_word.split('').sort
        anagram_array << new_word
      end
    end
    anagram_array
  end

end
