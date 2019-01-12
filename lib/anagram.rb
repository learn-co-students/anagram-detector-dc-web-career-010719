# Your code goes here!
require 'pry'

class Anagram
  attr_accessor :word

  def initialize(word)
  	@word = word
  end

  def match(word_or_string)
  	word_arr = self.word.split("").sort
  	word_or_string.select do |word|
  		word_arr == word.split("").sort
  	end
  end

end