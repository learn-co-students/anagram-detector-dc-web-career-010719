class Anagram
  attr_accessor :word, :anagrams

  def initialize(word)
    @word = word
  end

  def match(anagrams)
    anagram_index = []
    word_letters = self.word.split("").sort
    anagrams_letters = anagrams.map {|word| word.split("").sort}
    anagram_index = anagrams_letters.each_with_index.select {|word,index| word == word_letters}.map(&:last)
    anagram_index.map {|num| anagrams[num]}
  end
end
