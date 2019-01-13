# Your code goes here!
require 'pry'
class Anagram
  attr_accessor :anagram

  def initialize(anagram)
    @anagram = anagram
  end

  def match(words)
    words.map do |word|
      if word.split("").sort == anagram.split("").sort
        word
      end
    end.uniq.reject {|word| word == nil}
  end
end
